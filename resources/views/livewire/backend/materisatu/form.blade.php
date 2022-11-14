<div>
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">{{ $key ? 'Edit' : 'Tambah' }} Materi Satu</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item">Materi</li>
            <li class="breadcrumb-item">Satu</li>
            <li class="breadcrumb-item active"><a href="#">{{ $key ? 'Edit' : 'Tambah' }}</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <form wire:submit.prevent="submit">
            <div class="card">
              <div class="card-header">
                Form
              </div>
              <div class="card-body">
                <div wire:ignore>
                  <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Soal</label>
                    <textarea id="editor" rows="10">{{ $data->soal }}</textarea>
                  </div>
                </div>

                <div class="alert alert-info text-dark">
                  Pilihan Jawaban :
                  <div wire:ignore>
                    <table>
                      <tr>
                        <th>a.</th>
                        <td>
                          <textarea id="editor1">{{ $data->a }}</textarea>
                        </td>
                      </tr>
                      <tr>
                        <th>b.</th>
                        <td>
                          <textarea id="editor2">{{ $data->b }}</textarea>
                        </td>
                      </tr>
                      <tr>
                        <th>c.</th>
                        <td>
                          <textarea id="editor3">{{ $data->c }}</textarea>
                        </td>
                      </tr>
                      <tr>
                        <th>d.</th>
                        <td>
                          <textarea id="editor4">{{ $data->d }}</textarea>
                        </td>
                      </tr>
                      <tr>
                        <th>e.</th>
                        <td>
                          <textarea id="editor5">{{ $data->e }}</textarea>
                        </td>
                      </tr>
                    </table>
                  </div>
                  <hr>
                  <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Kunci Jawaban</label>
                    <select wire:model.defer="kunci" class="form-control">
                      <option value="" hidden selected></option>
                      <option value="a">a</option>
                      <option value="b">b</option>
                      <option value="c">c</option>
                      <option value="d">d</option>
                      <option value="e">e</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="card-footer">
                <input type="submit" value="Submit" class="btn btn-success">
                <a href="/admin/materisatu" class="btn btn-danger">Batal</a>
              </div>
            </div>
          </form>
        </div>
      </div>
      <x-alert />
      <x-info />
    </div>
  </section>
  @push('scripts')
    <script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
    <script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>

    <script>
      ClassicEditor
        .create(document.querySelector('#editor'), {
          ckfinder: {
            uploadUrl: '{{ route('file.upload') . '?_token=' . csrf_token() }}',
            options: {
              resourceType: 'Images'
            }
          }
        }).then(soal => {
          soal.ui.focusTracker.on('change:isFocused', (evt, name, isFocused) => {
            if (!isFocused) {
              window.livewire.emit('set:setsoal', soal.getData());
            }
          });
        })
        .catch(error => {
          console.error(error);
        });

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
              window.livewire.emit('set:seta', soal.getData());
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
              window.livewire.emit('set:setb', soal.getData());
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
              window.livewire.emit('set:setc', soal.getData());
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
              window.livewire.emit('set:setd', soal.getData());
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
              window.livewire.emit('set:sete', soal.getData());
            }
          });
        })
        .catch(error => {
          console.error(error);
        });
    </script>
  @endpush
</div>
