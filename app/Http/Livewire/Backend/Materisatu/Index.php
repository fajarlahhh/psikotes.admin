<?php

namespace App\Http\Livewire\Backend\Materisatu;

use App\Models\MateriSatu;
use Livewire\Component;

class Index extends Component
{
  protected $paginationTheme = 'bootstrap';

  public $key, $dataForm, $soal, $jawaban_a, $jawaban_b, $jawaban_c, $jawaban_d, $jawaban_e, $kunci, $tambah = false;

  public function setKey($key = null)
  {
    $this->key = $key;
  }

  public function hapus()
  {
    MateriSatu::findOrFail($this->key)->delete();
    $this->key = null;
    session()->flash('success', 'Berhasil menghapus data');
  }

  public function render()
  {
    $data = MateriSatu::all();
    return view('livewire.backend.materisatu.index', [
      'data' => $data,
    ]);
  }
}
