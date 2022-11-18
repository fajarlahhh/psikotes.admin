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
            <div class="card-header form-inline">
              <select wire:model="jenis" class="form-control">
                <option value="angka">Angka</option>
                <option value="huruf">Huruf</option>
                <option value="simbol">Simbol</option>
              </select>&nbsp;
              <select wire:model="kolom" class="form-control">
                <option value="1">Kolom 1</option>
                <option value="2">Kolom 2</option>
                <option value="3">Kolom 3</option>
                <option value="4">Kolom 4</option>
                <option value="5">Kolom 5</option>
              </select>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <div wire:ignore>
                <div class="row">
                  <div class="col-lg-2">
                    <div class="form-group">
                      <label for="kataSandi">Jawaban A</label>
                      <textarea id="editor1">{{ $a }}</textarea>
                    </div>
                  </div>
                  <div class="col-lg-2">
                    <div class="form-group">
                      <label for="kataSandi">Jawaban B</label>
                      <textarea id="editor2">{{ $b }}</textarea>
                    </div>
                  </div>
                  <div class="col-lg-2">
                    <div class="form-group">
                      <label for="kataSandi">Jawaban C</label>
                      <textarea id="editor3">{{ $c }}</textarea>
                    </div>
                  </div>
                  <div class="col-lg-2">
                    <div class="form-group">
                      <label for="kataSandi">Jawaban D</label>
                      <textarea id="editor4">{{ $d }}</textarea>
                    </div>
                  </div>
                  <div class="col-lg-2">
                    <div class="form-group">
                      <label for="kataSandi">Jawaban E</label>
                      <textarea id="editor5">{{ $e }}</textarea>
                    </div>
                  </div>
                </div>
              </div>
              <div class=" table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th style="width: 10px">No.</th>
                      <th>Soal</th>
                      <th>Kunci</th>
                      <th style="width: 10px"></th>
                    </tr>
                  </thead>
                  <tbody>
                    @if ($data->count() > 0)
                      @foreach ($detail as $i => $row)
                        <tr>
                          <td>{{ ++$i }}</td>
                          <td>
                            <img src="{{ url('/' . $row->soal) }}" alt="" style="width: 100px">
                          </td>
                          <td>
                            {{ $row->kunci }}
                          </td>
                          <td>
                            @if ($row->getKey() == $key)
                              <button class="btn btn-success btn-sm" wire:click="hapus">Ya, Hapus</button>
                              <button class="btn btn-danger btn-sm" wire:click="setKey">Batal</button>
                            @else
                              <button class="btn btn-danger btn-sm"
                                wire:click="setKey({{ $row->getKey() }})">Hapus</button>
                            @endif
                          </td>
                        </tr>
                      @endforeach
                      <tr>
                        <td colspan="4">
                          @if ($tambahSoal == true)
                            <form wire:submit.prevent="upload">
                              <div class="form-group">
                                <label for="kataSandi">Kunci Jawaban</label>
                                <select wire:model.defer="kunci" class="form-control">
                                  <option value="a">A</option>
                                  <option value="b">B</option>
                                  <option value="c">C</option>
                                  <option value="d">D</option>
                                  <option value="e">E</option>
                                </select>
                              </div>
                              <div class="form-group">
                                <label for="kataSandi">Gambar</label>
                                <input type="file" wire:model.defer="file" accept="image/*" class="form-control">
                              </div>
                              <input type="submit" class="btn btn-success" value="Simpan">
                            </form>
                          @else
                            <div class="text-center">
                              <button class="btn btn-primary" wire:click="tambahSoal">Tambah Soal</button>
                            </div>
                          @endif
                        </td>
                      </tr>
                    @endif
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
  @push('scripts')
    <script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
    <script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>

    <script>
      ClassicEditor
        .create(document.querySelector('#editor1'), {
          ckfinder: {
            uploadUrl: '{{ route('file.upload') . '?_token=' . csrf_token() }}',
            options: {
              resourceType: 'Images'
            }
          }
        }).then(soal => {
          soal.ui.focusTracker.on('change:isFocused', (evt, name, isFocused) => {
            if (!isFocused) {
              window.livewire.emit('seta', soal.getData());
            }
          });
        })
        .catch(error => {
          console.error(error);
        });
      ClassicEditor
        .create(document.querySelector('#editor2'), {
          ckfinder: {
            uploadUrl: '{{ route('file.upload') . '?_token=' . csrf_token() }}',
            options: {
              resourceType: 'Images'
            }
          }
        }).then(soal => {
          soal.ui.focusTracker.on('change:isFocused', (evt, name, isFocused) => {
            if (!isFocused) {
              window.livewire.emit('setb', soal.getData());
            }
          });
        })
        .catch(error => {
          console.error(error);
        });
      ClassicEditor
        .create(document.querySelector('#editor3'), {
          ckfinder: {
            uploadUrl: '{{ route('file.upload') . '?_token=' . csrf_token() }}',
            options: {
              resourceType: 'Images'
            }
          }
        }).then(soal => {
          soal.ui.focusTracker.on('change:isFocused', (evt, name, isFocused) => {
            if (!isFocused) {
              window.livewire.emit('setc', soal.getData());
            }
          });
        })
        .catch(error => {
          console.error(error);
        });
      ClassicEditor
        .create(document.querySelector('#editor4'), {
          ckfinder: {
            uploadUrl: '{{ route('file.upload') . '?_token=' . csrf_token() }}',
            options: {
              resourceType: 'Images'
            }
          }
        }).then(soal => {
          soal.ui.focusTracker.on('change:isFocused', (evt, name, isFocused) => {
            if (!isFocused) {
              window.livewire.emit('setd', soal.getData());
            }
          });
        })
        .catch(error => {
          console.error(error);
        });
      ClassicEditor
        .create(document.querySelector('#editor5'), {
          ckfinder: {
            uploadUrl: '{{ route('file.upload') . '?_token=' . csrf_token() }}',
            options: {
              resourceType: 'Images'
            }
          }
        }).then(soal => {
          soal.ui.focusTracker.on('change:isFocused', (evt, name, isFocused) => {
            if (!isFocused) {
              window.livewire.emit('sete', soal.getData());
            }
          });
        })
        .catch(error => {
          console.error(error);
        });
    </script>
  @endpush
</div>
