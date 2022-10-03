<div>
  <a href="/admin/materisatu/tambah" class="mt-3 btn btn-primary">Tambah</a>
  <div class="card mb-4 mt-4 rounded-3 shadow-sm">
    <div class="card-header py-3 ">
      <h6 class="my-0 fw-normal">Data Soal</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Soal</th>
              <th scope="col">Pilihan Jawaban</th>
              <th scope="col" style="width: 10px">Kunci</th>
              <th scope="col" style="width: 10px"></th>
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
                  <table>
                    <tr>
                      <th>a. </th>
                      <td>@php echo $row->a @endphp</td>
                    </tr>
                    <tr>
                      <th>b. </th>
                      <td>@php echo $row->b @endphp</td>
                    </tr>
                    <tr>
                      <th>c. </th>
                      <td>@php echo $row->c @endphp</td>
                    </tr>
                    <tr>
                      <th>d. </th>
                      <td>@php echo $row->d @endphp</td>
                    </tr>
                    <tr>
                      <th>e. </th>
                      <td>@php echo $row->e @endphp</td>
                    </tr>
                  </table>
                </td>
                <th class="text-center">{{ $row->kunci }}</th>
                <td class="with-btn-group align-middle text-right width-10">
                  <div class="btn-group btn-group-sm" role="group">
                    @if ($key === $row->getKey())
                      <button wire:click="hapus()" class="btn btn-danger">Ya, Hapus</button>
                      <button wire:click="setKey()" class="btn btn-success">Batal</button>
                    @else
                      <a href="/admin/materisatu/edit/{{ $row->getKey() }}" class="btn btn-info">Edit</a>
                      <button wire:click="setKey({{ $row->getKey() }})" class="btn btn-danger">Hapus</button>
                    @endif
                  </div>
                </td>
              </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
