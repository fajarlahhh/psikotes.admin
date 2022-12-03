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
    $sandi = date('hms') . $this->index;
    return new ModelsRuangKerjaPeserta([
      'ruang_kerja_id' => $this->id,
      'nomor' => date('YmdHms') . $this->index,
      'nama' => $row[0],
      'kata_sandi' => Hash::make($sandi),
      'kata_sandi_show' => $sandi,
    ]);
  }
}
