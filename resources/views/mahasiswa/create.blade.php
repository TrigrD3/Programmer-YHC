@extends('layouts.app')

@section('content')
<div class="container">
  <div class="row">
    <div class="col">
      <form action="{{ route('mahasiswa.store') }}" method="POST">
        @csrf
        <div class="form-group">
          <label for="nama">Nama</label>
          <input type="text" name="nama" id="nama" class="form-control">
        </div>
  
        <div class="form-group">
          <label for="nim">NIM</label>
          <input type="text" name="nim" id="nim" class="form-control">
        </div>
  
        <div class="form-group">
          <label for="semester">Semester</label>
          <input type="number" name="semester" id="semester" class="form-control">
        </div>
  
        <div class="form-group">
          <label for="prodi">Prodi</label>
          <select class="form-control" name="prodi" id="prodi">
            <option value="1">Teknologi Informasi</option>
            <option value="2">Teknik Sipil</option>
            <option value="3">Teknik Lingkungan</option>
            <option value="4">Akuntansi</option>
            <option value="5">Hukum</option>
          </select>
        </div>

        <div class="form-group">
          <label for="angkatan">Angkatan</label>
          <input type="number" name="angkatan" id="angkatan" class="form-control">
        </div>


        <div class="form-group">
          <label for="kelas">Kelas</label>
          <select class="form-control" name="kelas" id="kelas">
            <option value="1">A</option>
            <option value="2">B</option>
            <option value="3">C</option>
            <option value="4">D</option>
          </select>
        </div>

        <button type="submit" class="btn btn-primary mt-1">Submit</button>
      </form>
    </div>
  </div>
</div>

@endsection