<?php

namespace App\Http\Livewire\Backend\Materidua;

use App\Models\MateriDua;
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
    MateriDua::findOrFail($this->key)->delete();
    $this->key = null;
    session()->flash('success', 'Berhasil menghapus data');
  }

  public function render()
  {
    $data = MateriDua::all();
    return view('livewire.backend.materidua.index', [
      'data' => $data,
    ]);
  }
}
