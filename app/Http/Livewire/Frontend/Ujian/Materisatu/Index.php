<?php

namespace App\Http\Livewire\Frontend\Ujian\Materisatu;

use App\Models\JawabanPengguna;
use Livewire\Component;

class Index extends Component
{
  public $dataSoal, $soal, $key, $dataJawabanPengguna, $jawaban = null, $waktu;

  protected $queryString = ['soal', 'key'];

  public function decrementWaktu()
  {
    if ($this->waktu >= 0) {
      $this->waktu--;
    } else {
      redirect('/ujian/materisatu?key=' . $this->key);
    }
    if ($this->waktu == 0) {
      JawabanPengguna::where('pengguna_id', auth()->id())->where('ujian_id', $this->key)->whereNull('waktu')->update([
        'waktu' => $this->waktu,
      ]);
      $data = JawabanPengguna::where('pengguna_id', auth()->id())->where('ujian_id', $this->key)->whereNotNull('waktu')->orderBy('waktu', 'desc')->first();
      $data->waktu = 0;
      $data->save();
    }
  }

  public function mount()
  {
    $this->dataJawabanPengguna = JawabanPengguna::where('pengguna_id', auth()->id())->where('ujian_id', $this->key)->get();
    $this->waktu = $this->dataJawabanPengguna->whereNotNull('waktu')->count() == 0 ? $this->waktu : $this->dataJawabanPengguna->whereNotNull('waktu')->sortBy('waktu')->first()->waktu;
    $this->soal = $this->dataJawabanPengguna->whereNull('jawaban')->count() > 0 ? $this->dataJawabanPengguna->whereNull('jawaban')->first()->id : $this->dataJawabanPengguna->first()->id;
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
    if ($this->waktu > 0) {
      $this->validate([
        'waktu' => 'required',
        'soal' => 'required',
        'jawaban' => 'required',
      ]);
      JawabanPengguna::find($this->soal)->update([
        'jawaban' => $this->jawaban,
        'waktu' => $this->waktu,
      ]);
      $this->jawaban = null;

      if ($this->soal < $this->dataJawabanPengguna->sortByDesc('id')->first()->id) {
        $this->soal++;
      }
    }
  }

  public function render()
  {
    $this->jawaban = JawabanPengguna::findOrFail($this->soal)->jawaban ?: null;

    return view('livewire.frontend.ujian.materisatu.index', [
      'tampil' => \App\Models\MateriSatu::find(JawabanPengguna::findOrFail($this->soal)->materi_satu_id),
    ]);
  }
}
