<?php

namespace App\Http\Livewire\Ruangkerja;

use App\Models\RuangKerja;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
  use WithPagination;

  public $key;
  protected $paginationTheme = 'bootstrap';

  public function setKey($key = null)
  {
    $this->key = $key;
  }

  public function hapus()
  {
    RuangKerja::findOrFail($this->key)->delete();
    $this->key = null;
  }

  public function render()
  {
    return view('livewire.ruangkerja.index', [
      'no' => ($this->page - 1) * 10,
      'data' => RuangKerja::orderBy('id', 'desc')->with('peserta')->with('materiSatu')->with('materiDua')->with('materiTiga')->paginate(10),
    ]);
  }
}
