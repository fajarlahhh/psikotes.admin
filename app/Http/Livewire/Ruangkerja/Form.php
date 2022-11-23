<?php

namespace App\Http\Livewire\Ruangkerja;

use App\Imports\RuangKerjaPeserta as ImportRuangKerjaPeserta;
use App\Models\MateriDuaDetail;
use App\Models\MateriSatuDetail;
use App\Models\MateriTigaDetail;
use App\Models\MateriTigaSubDetail;
use App\Models\RuangKerja;
use App\Models\RuangKerjaMateriDua;
use App\Models\RuangKerjaMateriSatu;
use App\Models\RuangKerjaMateriTiga;
use App\Models\RuangKerjaMateriTigaDetail;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Livewire\Component;
use Livewire\WithFileUploads;
use Maatwebsite\Excel\Facades\Excel;

class Form extends Component
{
  use WithFileUploads;

  public $waktuMateriSatu, $waktuMateriDua, $waktuMateriTiga, $deskripsi, $dataPeserta, $materiSatu, $materiDua, $materiTiga;

  public function submit()
  {
    $this->validate([
      'deskripsi' => 'required',
      'dataPeserta' => 'required|mimes:xls,xlsx',
    ]);

    if ($this->materiSatu) {
      $this->validate([
        'waktuMateriSatu' => 'required',
      ]);
    }

    if ($this->materiDua) {
      $this->validate([
        'waktuMateriDua' => 'required',
      ]);
    }

    if ($this->materiTiga) {
      $this->validate([
        'waktuMateriTiga' => 'required',
      ]);
    }

    DB::transaction(function () {
      $data = new RuangKerja();
      $data->deskripsi = $this->deskripsi . '-' . date('Y-m-d H:m:s');
      $data->materi_satu_id = $this->materiSatu;
      $data->materi_dua_id = $this->materiDua;
      $data->materi_tiga_id = $this->materiTiga;
      $data->waktu_materi_satu = $this->waktuMateriSatu;
      $data->waktu_materi_dua = $this->waktuMateriDua;
      $data->waktu_materi_tiga = $this->waktuMateriTiga;
      $data->save();

      if ($this->materiSatu) {
        RuangKerjaMateriSatu::insert(MateriSatuDetail::where('materi_satu_id', $this->materiSatu)->get()->map(fn($q) => [
          'ruang_kerja_id' => $data->id,
          'aspek' => $q->aspek,
          'soal' => $q->soal,
          'kunci' => $q->kunci,
          'created_at' => now(),
          'updated_at' => now(),
        ])->toArray());
      }

      if ($this->materiDua) {
        RuangKerjaMateriDua::insert(MateriDuaDetail::where('materi_dua_id', $this->materiDua)->get()->map(fn($q) => [
          'ruang_kerja_id' => $data->id,
          'aspek' => $q->aspek,
          'soal' => $q->soal,
          'kunci' => $q->kunci,
          'created_at' => now(),
          'updated_at' => now(),
        ])->toArray());
      }

      if ($this->materiTiga) {
        foreach (MateriTigaDetail::where('materi_tiga_id', $this->materiTiga)->with('detail')->get() as $key => $row) {
          $soal = new RuangKerjaMateriTiga();
          $soal->ruang_kerja_id = $data->id;
          $soal->kolom = $row->kolom;
          $soal->a = $row->a;
          $soal->b = $row->b;
          $soal->c = $row->c;
          $soal->d = $row->d;
          $soal->e = $row->e;
          $soal->save();
          RuangKerjaMateriTigaDetail::insert(MateriTigaSubDetail::where('materi_tiga_detail_id', $row->id)->get()->map(fn($q) => [
            'ruang_kerja_materi_tiga_id' => $soal->id,
            'a' => $q->a,
            'b' => $q->b,
            'c' => $q->c,
            'd' => $q->d,
            'kunci' => $q->kunci,
            'created_at' => now(),
            'updated_at' => now(),
          ])->toArray());
        }
      }

      $extension = $this->dataPeserta->getClientOriginalExtension();
      Storage::putFileAs('public', $this->dataPeserta, 'peserta.' . $extension);
      Excel::import(new ImportRuangKerjaPeserta($data->id), '/public/peserta.' . $extension);
      Storage::delete('public/peserta.' . $extension);
    });

    return redirect('/ruangkerja');
  }

  public function render()
  {
    return view('livewire.ruangkerja.form');
  }
}
