<div>
  <form wire:submit.prevent="submit">
    <div class="card mb-4 mt-4 rounded-3 shadow-sm ">
      <div class="card-header py-3 ">
        <h6 class="my-0 fw-normal">Form</h6>
      </div>
      <div class="card-body">
        <form wire:submit.prevent="submit">
          <div wire:ignore>
            <div class="mb-3">
              <label for="exampleFormControlInput1" class="form-label">Soal</label>
              <textarea id="editor" rows="10">{{ $data->soal }}</textarea>
            </div>
          </div>
          <div class="alert alert-info">
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
        </form>
      </div>
      <div class="card-footer">
        <input type="submit" class="btn-success btn" value="Simpan">
        <a class="btn btn-danger" href="/admin/materisatu">Batal</a>
      </div>
    </div>
  </form>
  <x-alert />
  <x-info />
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
