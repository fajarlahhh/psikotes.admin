<?php

namespace App\Http\Livewire\Backend\Datapeserta;

use App\Models\Pengguna;
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
    Pengguna::findOrFail($this->key)->delete();
  }

  public function render()
  {
    $data = Pengguna::where('level', 2)->get();
    return view('livewire.backend.datapeserta.index', ['data' => $data]);
  }
}
