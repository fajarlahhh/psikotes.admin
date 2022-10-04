<div>
  @switch($data->materi)
    @case(1)
      <livewire:frontend.ujian.materisatu.index :ujian="$key" :waktu="$data->waktu" />
    @break

    @case(2)
      <livewire:frontend.ujian.materidua :ujian="$key" />
    @break

    @case(3)
      <livewire:frontend.ujian.materitiga :ujian="$key" />
    @break

    @default
  @endswitch
</div>
