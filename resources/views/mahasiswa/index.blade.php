@extends('layouts.app')
@section('content')

<div class="container">
  <div class="row">
    <div class="d-flex justify-content-center">
    <h3 class="text-center"><b>Data Mahasiswa</b></h3>
    </div>
  </div>

  <div class="container container2">
    <div class="row overflow-auto">
      <div class="col">
          <table id="table_mahasiswa" class="table table-hover display">
              <thead>
                  <tr class="table-primary border">
                      <th scope="col">NAMA</th>
                      <th scope="col">NIM</th>
                      <th scope="col">SEMESTER</th>
                      <th scope="col">PRODI</th>
                      <th scope="col">ANGKATAN</th>
                      <th scope="col">KELAS</th>
                      <th scope="col">ACTION</th>
                  </tr>
              </thead>
              <tbody>
                  @foreach ($mahasiswa as $mhs)
                      <tr>
                          <td>{{ $mhs->nama }}</td>
                          <td>{{ $mhs->nim }}</td>
                          <td>{{ $mhs->semester }}</td>
                          <td>{{ $mhs->prodi->nama_prodi }}</td>
                          <td>{{ $mhs->angkatan }}</td>
                          <td>{{ $mhs->kelas->nama_kelas }}</td>
                          <td>
                            <div class="d-flex">
                              <div class="col-auto me-1">
                                <a href="{{ route('mahasiswa.show', $mhs->id) }}" class="btn btn-success btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                                  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                  <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                                </svg></a>
                              </div>
                              <div class="col-auto me-1">
                                <a href="{{ route('mahasiswa.edit', $mhs->id) }}" class="btn btn-primary btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
                                  <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                                </svg></a></div>

                              <div class="col-auto me-1">
                                <form action="{{ route('mahasiswa.delete', $mhs->id) }}" method="POST">
                                  @csrf
                                  @method('DELETE')
                                  <button type="submit" class="btn btn-danger btn-sm delete-btn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                    <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                  </svg></button>
                                </form>
                              </div>
                            </div>
                        </td>

                      </tr>
                  @endforeach
              </tbody>
          </table>
      </div>
  </div>
  </div>

  <div class="row credit">
    <div class="col-12">
      <div class="d-flex justify-content-between">
        <a href="{{ route('mahasiswa.create') }}" class="btn btn-primary">Add Mahasiswa</a>

        <h1 class="fs-5">Created by:</h1>
      </div>
    </div>

    <div class="col-12">
      <div class="d-flex justify-content-end">
        <h1 class="fs-5"><b>Muhammad Jatmika Aryaputra</b></h1>
      </div>
    </div>
  </div>


</div>

@push('scripts')    
<!-- Push Script -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    $(document).on('click', '.delete-btn', function(e) {
        e.preventDefault();
        var form = $(this).closest('form');
        Swal.fire({
            title: 'Are you sure?',
            text: "Once deleted, you will not be able to recover this data!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                form.submit();
            }
        });
    });
</script>
@endpush

@endsection