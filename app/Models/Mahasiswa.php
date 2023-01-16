<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{
    protected $table = 'mahasiswa';
    use HasFactory;

    function getAllMahasiswa(){
        return Mahasiswa::all();   
    }

    function prodi(){
        return $this -> belongsTo('App\Models\Prodi', "prodi_id", "id");
    }

    function kelas(){
        return $this -> belongsTo('App\Models\Kelas', "kelas_id", "id");
    }
}
