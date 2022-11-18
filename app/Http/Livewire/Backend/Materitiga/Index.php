<?php

namespace App\Http\Livewire\Backend\Materitiga;

use App\Models\MateriTiga;
use App\Models\MateriTigaDetail;
use Illuminate\Support\Facades\Storage;
use Livewire\Component;
use Livewire\WithFileUploads;

class Index extends Component
{
  use WithFileUploads;
  public $key, $jenis = 'angka', $kolom = 1, $a, $b, $c, $d, $e, $detail = [], $data, $tambahSoal = false, $kunci = 'A', $file;

  protected $queryString = ['jenis', 'kolom'];

  public function setKey($key = null)
  {
    $this->key = $key;
  }

  public function updatedJenis()
  {
    $this->kolom = 1;
    return redirect("/admin/materitiga?jenis=$this->jenis&kolom=$this->kolom");
  }

  public function updatedKolom()
  {
    return redirect("/admin/materitiga?jenis=$this->jenis&kolom=$this->kolom");
  }

  public function hapus()
  {
    $data = MateriTigaDetail::findOrFail($this->key);
    Storage::disk('local')->delete('public/' . $data->soal);
    $data->delete();
    $this->key = null;
    session()->flash('success', 'Berhasil menghapus data');
  }

  public function simpan()
  {
    $data = new MateriTiga();
    if (MateriTiga::where('jenis', $this->jenis)->where('kolom', $this->kolom)->count() > 0) {
      $data = MateriTiga::where('jenis', $this->jenis)->where('kolom', $this->kolom)->first();
    }
    $data->a = $this->a;
    $data->b = $this->b;
    $data->c = $this->c;
    $data->d = $this->d;
    $data->e = $this->e;
    $data->jenis = $this->jenis;
    $data->kolom = $this->kolom;
    $data->save();
  }

  protected $listeners = [
    'seta' => 'setA',
    'setb' => 'setB',
    'setc' => 'setC',
    'setd' => 'setD',
    'sete' => 'setE',
  ];

  public function setA($a)
  {
    $this->a = $a;
    $this->simpan();
  }

  public function setB($b)
  {
    $this->b = $b;
    $this->simpan();
  }

  public function setC($c)
  {
    $this->c = $c;
    $this->simpan();
  }

  public function setD($d)
  {
    $this->d = $d;
    $this->simpan();
  }

  public function setE($e)
  {
    $this->e = $e;
    $this->simpan();
  }

  public function tambahSoal()
  {
    $this->tambahSoal = true;
  }

  public function upload()
  {
    $extension = $this->file->getClientOriginalExtension();
    $namaFile = date('YmdHims') . time() . uniqid() . '_' . $this->jenis . '_' . $this->kolom;
    Storage::disk('local')->putFileAs('public/' . $this->jenis . '/' . $this->kolom, $this->file, $namaFile . '.' . $extension);
    $link = $this->jenis . '/' . $this->kolom . '/' . $namaFile . '.' . $extension;

    $data = new MateriTigaDetail();
    $data->materi_tiga_id = $this->data->first()->id;
    $data->soal = $link;
    $data->kunci = $this->kunci;
    $data->save();
    $this->kunci = 'A';
    $this->tambahSoal = false;
  }

  public function render()
  {
    $this->data = MateriTiga::where('jenis', $this->jenis)->where('kolom', $this->kolom)->get();
    if ($this->data->count() > 0) {
      $this->a = $this->data->first()->a;
      $this->b = $this->data->first()->b;
      $this->c = $this->data->first()->c;
      $this->d = $this->data->first()->d;
      $this->e = $this->data->first()->e;
    }
    $this->detail = $this->data->count() ? $this->data->first()->detail : collect([]);
    return view('livewire.backend.materitiga.index');
  }
}
