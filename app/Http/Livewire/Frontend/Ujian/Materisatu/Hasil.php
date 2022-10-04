<?php

namespace App\Http\Livewire\Frontend\Ujian\Materisatu;

use App\Models\JawabanPengguna;
use Livewire\Component;

class Hasil extends Component
{
  public $key, $benar = 0, $salah = 0, $belum = 0;

  protected $queryString = ['key'];

  public function mount()
  {
    $dataJawabanPengguna = JawabanPengguna::where('pengguna_id', auth()->id())->where('ujian_id', $this->key)->leftJoin('materi_satu', 'materi_satu.id', '=', 'jawaban_pengguna.materi_satu_id')->get();
    $this->belum = $dataJawabanPengguna->whereNull('jawaban')->count();
    $this->benar = $dataJawabanPengguna->where(function ($q) {
      if ($q->jawaban == $q->kunci) {
        return true;
      }
      return false;
    })->count();
    $this->salah = $dataJawabanPengguna->count() - $this->benar - $this->belum;
  }

  public function render()
  {
    return view('livewire.frontend.ujian.materisatu.hasil');
  }
}
