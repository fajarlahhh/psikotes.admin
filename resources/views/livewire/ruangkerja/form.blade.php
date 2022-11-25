<div>
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Tambah Setting</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item">Setting</li>
            <li class="breadcrumb-item active"><a href="#">Tambah</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div wire:loading wire:target="submit" class="text-center">
            <div class="ml-2">
              <h5 class="text-danger">Mohon Tunggu. Sedang menyimpan data...</h5>
            </div>
          </div>
          <div class="card" wire:loading.remove wire:target="submit">
            <form wire:submit.prevent="submit">
              <div class="card-body">
                <div class="form-group">
                  <label>Deskripsi</label>
                  <input type="text" class="form-control" wire:model.defer="deskripsi">
                </div>
                <div class="form-group">
                  <label>Data Peserta</label>
                  <input type="file" class="form-control" wire:model.defer="dataPeserta"
                    accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet">
                </div>
                <table class="table table-bordered">
                  <tr>
                    <th>Materi</th>
                    <th>Waktu (Detik)</th>
                  </tr>
                  <tr>
                    <td>
                      <select wire:model.defer="materiSatu" class="form-control">
                        <option value="">-- Tidak --</option>
                        @foreach (\App\Models\MateriSatu::whereHas('detail')->get() as $row)
                          <option value="{{ $row->getKey() }}">Jenis {{ $row->getKey() }}</option>
                        @endforeach
                      </select>
                    </td>
                    <td>
                      <input type="number" step="1" class="form-control" wire:model.defer="waktuMateriSatu">
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <select wire:model.defer="materiDua" class="form-control">
                        <option value="">-- Tidak --</option>
                        @foreach (\App\Models\MateriDua::whereHas('detail')->get() as $row)
                          <option value="{{ $row->getKey() }}">Jenis {{ $row->getKey() }}</option>
                        @endforeach
                      </select>
                    </td>
                    <td>
                      <input type="number" step="1" class="form-control" wire:model.defer="waktuMateriDua">
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <select wire:model.defer="materiTiga" class="form-control">
                        <option value="">-- Tidak --</option>
                        @foreach (\App\Models\MateriTiga::whereHas('detail')->get() as $row)
                          <option value="{{ $row->getKey() }}">
                            @switch($row->getKey())
                              @case(1)
                                Angka
                              @break

                              @case(2)
                                Huruf
                              @break

                              @case(3)
                                Simbol
                              @break
                            @endswitch
                          </option>
                        @endforeach
                      </select>
                    </td>
                    <td>
                      <input type="number" step="1" class="form-control" wire:model.defer="waktuMateriTiga">
                    </td>
                  </tr>
                </table>
              </div>
              <div class="card-footer">
                <input type="submit" class="btn btn-success" value="Simpan">
              </div>
            </form>
          </div>
        </div>
      </div>
      <x-alert />
      <x-info />
    </div>
  </section>
</div>
