<?php

namespace App\Http\Livewire;

use App\Models\Pengguna;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Livewire\Component;

class Gantikatasandi extends Component
{public $passwordLama, $passwordBaru;

  public function submit()
  {
    $this->validate([
      'passwordLama' => 'required',
      'passwordBaru' => 'required',
    ]);

    $id = Auth::id();
    $pengguna = Pengguna::findOrFail($id);
    if ($pengguna) {
      if (!Hash::check($this->passwordLama, $pengguna->kata_sandi)) {
        session()->flash('danger', 'Kata sandi lama salah');
      } else {
        $pengguna->kata_sandi = Hash::make($this->passwordBaru);
        $pengguna->save();

        session()->flash('success', 'Berhasil menyimpan data');
      }
    } else {
      session()->flash('danger', 'Data tidak ditemukan');
    }
  }

  public function render()
  {
    return view('livewire.gantikatasandi');
  }
}
