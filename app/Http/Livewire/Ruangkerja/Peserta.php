<?php

namespace App\Http\Livewire\Ruangkerja;

use App\Models\RuangKerjaPeserta;
use Livewire\Component;

class Peserta extends Component
{
  public $key;
  public function mount($key)
  {
    $this->key = $key;
  }

  public function render()
  {
    return view('livewire.ruangkerja.peserta', [
      'data' => RuangKerjaPeserta::where('ruang_kerja_id', $this->key)->get(),
    ]);
  }
}
