<div>
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Setting</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item active"><a href="#">Setting</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <a class="btn btn-primary" href="/ruangkerja/tambah">Tambah</a>
            </div>
            <div class="card-body table-responsive p-0">
              <table class="table table-hover text-nowrap">
                <thead>
                  <tr>
                    <th style="width: 10px">No.</th>
                    <th>Deskripsi</th>
                    <th>Materi Satu</th>
                    <th>Materi Dua</th>
                    <th>Materi Tiga</th>
                    {{-- <th>Ulangi</th> --}}
                    <th>Peserta</th>
                    <th style="width: 10px"></th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($data as $i => $row)
                    <tr>
                      <td>{{ ++$i }}</td>
                      <td>{{ $row->deskripsi }}</td>
                      <td>
                        @php
                          if ($row->materi_satu_id) {
                              echo 'Jumlah Soal : ' . $row->materiSatu->count();
                              echo '<br>Waktu : ' .
                                  \Carbon\CarbonInterval::seconds($row->waktu_materi_satu)
                                      ->cascade()
                                      ->forHumans();
                          }
                        @endphp
                      </td>
                      <td>
                        @php
                          if ($row->materi_dua_id) {
                              echo 'Jumlah Soal : ' . $row->materiDua->count();
                              echo '<br>Waktu : ' .
                                  \Carbon\CarbonInterval::seconds($row->waktu_materi_dua)
                                      ->cascade()
                                      ->forHumans();
                          }
                        @endphp
                      </td>
                      <td>
                        @php
                          if ($row->materi_tiga_id) {
                              echo ($row->materi_tiga_id < 11 ? 'Huruf' : ($row->materi_tiga_id > 10 && $row->materi_tiga_id < 21 ? 'Simbol' : 'Angka')) . ' - ' . ($row->materi_tiga_id % 10 == 0 ? 10 : $row->materi_tiga_id % 10);
                              echo '<br>Waktu : ' .
                                  \Carbon\CarbonInterval::seconds($row->waktu_materi_tiga)
                                      ->cascade()
                                      ->forHumans();
                          }
                        @endphp
                      </td>
                      {{-- <td>{{ $row->perulangan }}</td> --}}
                      <td><a href="/ruangkerja/peserta/{{ $row->id }}"
                          class="btn btn-warning ">{{ $row->peserta->count() }}</a></td>
                      <td>
                        @if ($row->getKey() == $key)
                          <button class="btn btn-success" wire:click="hapus">Ya, Hapus</button>
                          <button class="btn btn-danger" wire:click="setKey">Batal</button>
                        @else
                          <button class="btn btn-danger" wire:click="setKey({{ $row->getKey() }})">Hapus</button>
                        @endif
                      </td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <div class="card-footer">
              <div class="row">
                <div class="col-md-10">
                  {{ $data->links() }}
                </div>
                <div class="col-md-2 text-right">
                  Data : {{ $data->total() }}
                </div>
              </div>
            </div>
          </div>
          <!-- /.card -->
        </div>
      </div>
    </div>
  </section>
</div>
