<?php

namespace App\Http\Livewire\Backend\Materidua;

use App\Models\MateriDua;
use Livewire\Component;

class Form extends Component
{
  public $key, $soal, $a, $b, $c, $d, $data;

  public function mount()
  {
    if ($this->key) {
      $this->data = MateriDua::findOrFail($this->key);
      $this->soal = $this->data->soal;
      $this->a = $this->data->a;
      $this->b = $this->data->b;
      $this->c = $this->data->c;
      $this->d = $this->data->d;
    } else {
      $this->data = new MateriDua();
    }
  }

  protected $listeners = [
    'set:setsoal' => 'setSoal',
  ];

  public function setSoal($soal)
  {
    $this->soal = $soal;
  }

  public function submit()
  {
    $this->validate([
      'soal' => 'required',
      'a' => 'required',
      'b' => 'required',
      'c' => 'required',
      'd' => 'required',
    ]);

    $this->data->soal = $this->soal;
    $this->data->a = $this->a;
    $this->data->b = $this->b;
    $this->data->c = $this->c;
    $this->data->d = $this->d;
    $this->data->save();

    return redirect('/admin/materidua');
  }

  public function render()
  {
    return view('livewire.backend.materidua.form');
  }
}
