<div>
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Data Materi Satu</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item active"><a href="#">Data Materi Satu</a></li>
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
              <a class="btn btn-primary" href="/admin/materisatu/tambah">Tambah</a>

              <div class="card-tools">
                {{-- <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">
  
                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div> --}}
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
              <table class="table table-hover text-nowrap">
                <thead>
                  <tr>
                    <th style="width: 10px">No.</th>
                    <th>Soal</th>
                    <th>Pilihan Jawaban</th>
                    <th style="width: 10px"></th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($data as $i => $row)
                    <tr>
                      <td>{{ ++$i }}</td>
                      <td>@php
                        echo $row->soal;
                      @endphp</td>
                      <td>
                        <table class="table table-borderless">
                          <tr>
                            <th style="padding: 0px; width: 20px">a. </th>
                            <td style="padding: 0px">@php echo $row->a @endphp</td>
                          </tr>
                          <tr>
                            <th style="padding: 0px">b. </th>
                            <td style="padding: 0px">@php echo $row->b @endphp</td>
                          </tr>
                          <tr>
                            <th style="padding: 0px">c. </th>
                            <td style="padding: 0px">@php echo $row->c @endphp</td>
                          </tr>
                          <tr>
                            <th style="padding: 0px">d. </th>
                            <td style="padding: 0px">@php echo $row->d @endphp</td>
                          </tr>
                          <tr>
                            <th style="padding: 0px">e. </th>
                            <td style="padding: 0px">@php echo $row->e @endphp</td>
                          </tr>
                        </table>
                      </td>
                      <td>
                        @if ($row->getKey() == $key)
                          <button class="btn btn-success btn-sm" wire:click="hapus">Ya, Hapus</button>
                          <button class="btn btn-danger btn-sm" wire:click="setKey">Batal</button>
                        @else
                          <a class="btn btn-info btn-sm" href="/admin/materisatu/edit/{{ $row->getKey() }}">Edit</a>
                          <button class="btn btn-danger btn-sm" wire:click="setKey({{ $row->getKey() }})">Hapus</button>
                        @endif
                      </td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
    </div>
  </section>
</div>
