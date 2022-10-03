<?php

namespace App\Http\Livewire\Backend\Materisatu;

use App\Models\MateriSatu;
use Livewire\Component;

class Form extends Component
{
  public $key, $soal, $a, $b, $c, $d, $e, $kunci, $data;

  public function mount()
  {
    if ($this->key) {
      $this->data = MateriSatu::findOrFail($this->key);
      $this->soal = $this->data->soal;
      $this->a = $this->data->a;
      $this->b = $this->data->b;
      $this->c = $this->data->c;
      $this->d = $this->data->d;
      $this->e = $this->data->e;
      $this->kunci = $this->data->kunci;
    } else {
      $this->data = new MateriSatu();
    }
  }

  protected $listeners = [
    'set:setsoal' => 'setSoal',
    'set:seta' => 'setA',
    'set:setb' => 'setB',
    'set:setc' => 'setC',
    'set:setd' => 'setD',
    'set:sete' => 'setE',
  ];

  public function setSoal($soal)
  {
    $this->soal = $soal;
  }

  public function setA($a)
  {
    $this->a = $a;
  }

  public function setB($b)
  {
    $this->b = $b;
  }

  public function setC($c)
  {
    $this->c = $c;
  }

  public function setD($d)
  {
    $this->d = $d;
  }

  public function setE($e)
  {
    $this->e = $e;
  }

  public function submit()
  {
    $this->validate([
      'soal' => 'required',
      'a' => 'required',
      'b' => 'required',
      'c' => 'required',
      'd' => 'required',
      'e' => 'required',
      'kunci' => 'required',
    ]);

    $this->data->soal = $this->soal;
    $this->data->a = $this->a;
    $this->data->b = $this->b;
    $this->data->c = $this->c;
    $this->data->d = $this->d;
    $this->data->e = $this->e;
    $this->data->kunci = $this->kunci;
    $this->data->save();

    return redirect('/admin/materisatu');
  }

  public function render()
  {
    return view('livewire.backend.materisatu.form');
  }
}
