<?php

namespace App\Http\Livewire\Frontend;

use App\Models\JawabanPengguna;
use App\Models\Ujian;
use App\Models\UjianSoal;
use Illuminate\Support\Facades\DB;
use Livewire\Component;

class Home extends Component
{
  public $dataUjian;

  public function mount()
  {
    $this->dataUjian = Ujian::with('ujianSoal')->get();
  }

  public function buka($key)
  {
    DB::transaction(function () use ($key) {
      if (JawabanPengguna::where('pengguna_id', auth()->id())->where('ujian_id', $key)->count() == 0) {
        $dataSoal = UjianSoal::where('ujian_id', $key)->get()->shuffle()->map(function ($q) use ($key) {
          return [
            'pengguna_id' => auth()->id(),
            'materi_satu_id' => $q->materi_satu_id,
            'ujian_id' => $key,
            'created_at' => now(),
            'updated_at' => now(),
          ];
        })->toArray();
        JawabanPengguna::insert($dataSoal);
      }
      return redirect('/ujian?key=' . $key);
    });
  }

  public function render()
  {
    return view('livewire.frontend.home');
  }
}
