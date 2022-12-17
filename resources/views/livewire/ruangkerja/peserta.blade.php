<div>
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Peserta Setting</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Setting</a></li>
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
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($data as $i => $row)
                    <tr>
                      <td>{{ ++$i }}</td>
                      <td>{{ $row->nomor }}</td>
                      <td>{{ $row->nama }}</td>
                      <td>{{ $row->kata_sandi_show }}</td>
                      <td>
                        <a href="/ruangkerja/peserta/{{ $key }}/{{ $row->id }}"
                          class="btn btn-warning">Nilai</a>
                      </td>
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
