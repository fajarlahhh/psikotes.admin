<?php

namespace App\Http\Livewire\Backend\Datapeserta;

use App\Models\Pengguna;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Livewire\Component;

class Form extends Component
{
  public $key, $data, $noPeserta, $nama, $kataSandi;

  public function mount()
  {
    if ($this->key) {
      $this->data = Pengguna::findOrFail($this->key);
      $this->noPeserta = $this->data->no_peserta;
      $this->nama = $this->data->nama;
    } else {
      $this->data = new Pengguna();
      $this->kataSandi = Str::random(6);
    }
  }

  public function generateKataSandi()
  {
    $this->kataSandi = Str::random(6);
  }

  public function submit()
  {
    $this->validate([
      'noPeserta' => 'required',
      'nama' => 'required',
    ]);

    $this->data->no_peserta = $this->noPeserta;
    $this->data->nama = $this->nama;
    $this->data->level = 2;

    if ($this->kataSandi) {
      $this->data->kata_sandi = Hash::make($this->kataSandi);
    }
    $this->data->save();

    return redirect('/admin/datapeserta');
  }

  public function render()
  {
    return view('livewire.backend.datapeserta.form');
  }
}
