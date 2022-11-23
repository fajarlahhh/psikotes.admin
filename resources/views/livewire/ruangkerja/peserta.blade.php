<div>
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Peserta Ruang Kerja</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Ruang Kerja</a></li>
            <li class="breadcrumb-item active">Peserta</li>
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
            <div class="card-body table-responsive p-0">
              <table class="table table-hover text-nowrap">
                <thead>
                  <tr>
                    <th style="width: 10px">No.</th>
                    <th>Nomor</th>
                    <th>Nama</th>
                    <th>Kata Sandi</th>
                    <th>Nilai Materi Satu</th>
                    <th>Nilai Materi Dua</th>
                    <th>Nilai Materi Tiga</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($data as $i => $row)
                    <tr>
                      <td>{{ ++$i }}</td>
                      <td>{{ $row->nomor }}</td>
                      <td>{{ $row->nama }}</td>
                      <td>{{ $row->kata_sandi_show }}</td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
          </div>
          <!-- /.card -->
        </div>
      </div>
    </div>
  </section>
</div>
