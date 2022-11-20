<?php

namespace App\Http\Livewire\Backend\Materitiga;

use App\Imports\MateriTigaDetail as ImportsMateriTigaDetail;
use App\Models\MateriTiga;
use App\Models\MateriTigaDetail;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Livewire\Component;
use Livewire\WithFileUploads;
use Maatwebsite\Excel\Facades\Excel;

class Index extends Component
{
  use WithFileUploads;

  public $key, $jenis = 'angka';

  public $soalKolom = [], $file = [];

  protected $queryString = ['jenis'];

  public function setKey($key = null)
  {
    $this->key = $key;
  }

  public function hapus()
  {
    MateriTigaDetail::findOrFail($this->key)->delete();
    $this->key = null;
    session()->flash('success', 'Berhasil menghapus data');
  }

  public function batal()
  {
    $this->key = null;
  }

  public function simpan($kolom)
  {
    $this->validate([
      'soalKolom.' . $kolom . '.a' => 'required',
      'soalKolom.' . $kolom . '.b' => 'required',
      'soalKolom.' . $kolom . '.c' => 'required',
      'soalKolom.' . $kolom . '.d' => 'required',
      'soalKolom.' . $kolom . '.e' => 'required',
      'file.' . $kolom => 'required|mimes:xls,xlsx',
    ]);

    DB::transaction(function () use ($kolom) {
      $data = new MateriTiga();
      $data->jenis = $this->jenis;
      $data->kolom = $kolom;
      $data->a = $this->soalKolom[$kolom]['a'];
      $data->b = $this->soalKolom[$kolom]['b'];
      $data->c = $this->soalKolom[$kolom]['c'];
      $data->d = $this->soalKolom[$kolom]['d'];
      $data->e = $this->soalKolom[$kolom]['e'];
      $data->save();

      $extension = $this->file[$kolom]->getClientOriginalExtension();
      Storage::putFileAs('public', $this->file[$kolom], 'kolom' . $kolom . '.' . $extension);
      Excel::import(new ImportsMateriTigaDetail($data->id), '/public/' . 'kolom' . $kolom . '.' . $extension);
      Storage::delete('public/kolom' . $kolom . '.' . $extension);
    });
  }

  public function render()
  {
    return view('livewire.backend.materitiga.index', [
      'data' => MateriTiga::where('jenis', $this->jenis)->get(),
    ]);
  }
}
