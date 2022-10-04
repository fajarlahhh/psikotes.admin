<?php

namespace App\Http\Livewire\Backend;

use App\Models\MateriSatu;
use App\Models\Ujian;
use App\Models\UjianSoal;
use Illuminate\Support\Facades\DB;
use Livewire\Component;

class Home extends Component
{
  public $bukaSatu = false, $waktuSatu, $bukaDua = false, $waktuDua, $bukaTiga = false, $waktuTiga, $data;

  public function mount()
  {
    $data = Ujian::whereNull('deleted_at')->get();
    $this->data = $data;
    foreach ($data as $row) {
      switch ($row->materi) {
        case 1:
          $this->bukaSatu = true;
          $this->waktuSatu = $row->waktu;
          break;
        case 2:
          $this->bukaDua = true;
          $this->waktuDua = $row->waktu;
          break;
        case 2:
          $this->bukaTiga = true;
          $this->waktuTiga = $row->waktu;
          break;
      }
    }
  }

  public function bukaSatu()
  {
    DB::transaction(function () {

      $this->data = new Ujian();
      $this->data->waktu = $this->waktuSatu ?: 0;
      $this->data->materi = 1;
      $this->data->save();

      $detail = MateriSatu::all()->map(function ($q) {
        return [
          'ujian_id' => $this->data->id,
          'materi_satu_id' => $q->id,
          'created_at' => now(),
          'updated_at' => now(),
        ];
      })->toArray();
      UjianSoal::insert($detail);
    });

    $this->bukaSatu = true;
  }

  public function tutupSatu()
  {
    Ujian::where('materi', 1)->delete();
    $this->waktuSatu = '';
    $this->bukaSatu = false;
    $this->mount();
  }

  public function bukaDua()
  {
    $this->data = new Ujian();
    $this->data->waktu = $this->waktuDua ?: 0;
    $this->data->materi = 2;

    $this->data->save();

    $this->bukaDua = true;
  }

  public function tutupDua()
  {
    Ujian::where('materi', 2)->delete();
    $this->waktuDua = '';
    $this->bukaDua = false;
    $this->mount();
  }

  public function bukaTiga()
  {
    $this->data = new Ujian();
    $this->data->waktu = $this->waktuTiga ?: 0;
    $this->data->materi = 3;

    $this->data->save();

    $this->bukaTiga = true;
  }

  public function tutupTiga()
  {
    Ujian::where('materi', 2)->delete();
    $this->waktuTiga = '';
    $this->bukaTiga = false;
    $this->mount();
  }

  public function render()
  {
    return view('livewire.backend.home');
  }
}
