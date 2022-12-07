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
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Livewire\Component;
use Livewire\WithFileUploads;
use Maatwebsite\Excel\Facades\Excel;

class Form extends Component
{
  use WithFileUploads;

  public $waktuMateriSatu, $waktuMateriDua, $waktuMateriTiga, $deskripsi, $perulangan, $dataPeserta, $materiSatu, $materiDua, $materiTiga;

  public function submit()
  {
    $this->validate([
      'deskripsi' => 'required',
      'perulangan' => 'required',
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
      $data->perulangan = $this->perulangan;
      $data->materi_satu_id = $this->materiSatu ?: null;
      $data->materi_dua_id = $this->materiDua ?: null;
      $data->materi_tiga_id = $this->materiTiga ?: null;
      $data->waktu_materi_satu = $this->materiSatu ? $this->waktuMateriSatu : null;
      $data->waktu_materi_dua = $this->materiDua ? $this->waktuMateriDua : null;
      $data->waktu_materi_tiga = $this->materiTiga ? $this->waktuMateriTiga : null;
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
        RuangKerjaMateriTiga::insert(MateriTigaSubDetail::with('materiTigaDetail')->whereHas('materiTigaDetail', fn($q) => $q->where('materi_tiga_id', $this->materiTiga))->get()->map(fn($q) => [
          'ruang_kerja_id' => $data->id,
          'soal' => json_encode([$q->materiTigaDetail->a, $q->materiTigaDetail->b, $q->materiTigaDetail->c, $q->materiTigaDetail->d, $q->materiTigaDetail->e]),
          'a' => $q->a,
          'b' => $q->b,
          'c' => $q->c,
          'd' => $q->d,
          'kolom' => $q->materiTigaDetail->kolom,
          'kunci' => $q->kunci,
          'created_at' => now(),
          'updated_at' => now(),
        ])->toArray());
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
