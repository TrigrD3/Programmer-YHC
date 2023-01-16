@extends('layouts.app')

@section('content')
<div class="container">
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row justify-content-center">
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right">Detail Mahasiswa</h4>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12"><label class="labels">Nama:</label> {{ $mahasiswa->nama }}</div>
                        <div class="col-md-12"><label class="labels">NIM:</label> {{ $mahasiswa->nim }}</div>
                        <div class="col-md-12"><label class="labels">Semester:</label> {{ $mahasiswa->semester}}</div>
                        <div class="col-md-12"><label class="labels">Prodi:</label> {{ $mahasiswa->prodi->nama_prodi }}</div>
                        <div class="col-md-12"><label class="labels">Angkatan:</label> {{ $mahasiswa->angkatan }}</div>
                        <div class="col-md-12"><label class="labels">Kelas:</label> {{ $mahasiswa->kelas->nama_kelas }}</div>
                        
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>
    </div>
</div>
  
@endsection