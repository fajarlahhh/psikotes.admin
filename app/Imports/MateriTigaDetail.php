<?php

namespace App\Imports;

use App\Models\MateriTigaDetail as ModelsMateriTigaDetail;
use Maatwebsite\Excel\Concerns\ToModel;

class MateriTigaDetail implements ToModel
{
  /**
   * @param array $row
   *
   * @return User|null
   */
  public $id;

  public function __construct($id)
  {
    $this->id = $id;
  }

  public function model(array $row)
  {
    return new ModelsMateriTigaDetail([
      'materi_tiga_id' => $this->id,
      'a' => $row[0],
      'b' => $row[1],
      'c' => $row[2],
      'd' => $row[3],
      'kunci' => $row[4],
    ]);
  }
}
