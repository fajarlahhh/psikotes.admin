<?php

namespace App\Imports;

use App\Models\RuangKerjaPeserta as ModelsRuangKerjaPeserta;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;

class RuangKerjaPeserta implements ToModel
{
  public $id, $index = 0;

  public function __construct($id)
  {
    $this->id = $id;
  }

  public function model(array $row)
  {
    ++$this->index;
    $waktu = date('hms');
    return new ModelsRuangKerjaPeserta([
      'ruang_kerja_id' => $this->id,
      'nomor' => date('ymdHms') . $this->index,
      'nama' => $row[0],
      'kata_sandi' => Hash::make($waktu) . $this->index,
      'kata_sandi_show' => $waktu . $this->index,
    ]);
  }
}
