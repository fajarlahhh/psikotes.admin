<?php

namespace App\Http\Livewire\Backend\Materisatu;

use App\Models\MateriSatu;
use Livewire\Component;

class Index extends Component
{
  public $key;

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
