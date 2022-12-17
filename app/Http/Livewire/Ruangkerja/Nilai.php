<?php

namespace App\Http\Livewire\Ruangkerja;

use App\Models\RuangKerja;
use Livewire\Component;

class Nilai extends Component
{
  public $key, $peserta, $data;
  public function mount($key, $peserta)
  {
    $this->key = $key;
    $this->data = RuangKerja::findOrFail($this->key);
  }

  public function render()
  {
    return view('livewire.ruangkerja.nilai');
  }
}
