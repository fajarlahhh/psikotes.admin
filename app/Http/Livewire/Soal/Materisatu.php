<?php

namespace App\Http\Livewire\Soal;

use App\Models\MateriSatu as ModelsMateriSatu;
use App\Models\MateriSatuDetail;
use Livewire\Component;

class Materisatu extends Component
{
  public $soal, $kunci, $aspek, $jenis = 1, $key;

  public function setKey($key = null)
  {
    $this->key = $key;
  }

  public function hapus()
  {
    MateriSatuDetail::findOrFail($this->key)->delete();
    $this->key = null;
  }

  protected $listeners = [
    'setsoal' => 'setSoal',
  ];

  public function setSoal($soal)
  {
    $this->soal = $soal;
  }

  public function submit()
  {
    $this->validate([
      'soal' => 'required',
      'jenis' => 'required',
    ]);
    $data = new MateriSatuDetail();
    $data->materi_satu_id = $this->jenis;
    $data->aspek = $this->aspek;
    $data->soal = $this->soal;
    $data->kunci = $this->kunci;
    $data->save();

    $this->emit('reinitialize');
  }

  public function updatedJenis()
  {
    $this->emit('reinitialize');
  }

  public function render()
  {
    if (!ModelsMateriSatu::find($this->jenis)) {
      $data = new ModelsMateriSatu();
      $data->id = $this->jenis;
      $data->save();
    }
    return view('livewire.soal.materisatu', [
      'data' => MateriSatuDetail::where('materi_satu_id', $this->jenis)->get(),
    ]);
  }
}
