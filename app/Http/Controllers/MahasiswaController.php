<?php

namespace App\Http\Controllers;

use App\Models\Mahasiswa;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;


class MahasiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    protected $mahasiswa;

    public function __construct(Mahasiswa $mahasiswa)
    {
        $this->mahasiswa = $mahasiswa;
    }
    
    public function index()
    {
        $mahasiswa = new Mahasiswa();
        $data['mahasiswa'] = $mahasiswa->getAllMahasiswa();
        return view('mahasiswa.index', $data);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('mahasiswa.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $mahasiswa = new Mahasiswa();
        $mahasiswa->nama = request('nama');
        $mahasiswa->nim = request('nim');
        $mahasiswa->semester = request('semester');
        $mahasiswa->prodi_id = request('prodi');
        $mahasiswa->angkatan = request('angkatan');
        $mahasiswa->kelas_id = request('kelas');
        $mahasiswa->save();

        return redirect('/mahasiswa/index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Mahasiswa  $mahasiswa
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $mahasiswa = new Mahasiswa();
        $mahasiswa = Mahasiswa::find($id);
        if ($mahasiswa === null) {
            abort(404, "No book has been found.");
        }
        // use compact() to pass the variable to the view
        return view('mahasiswa.show', compact('mahasiswa'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Mahasiswa  $mahasiswa
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $mahasiswa = new Mahasiswa();
        $mahasiswa = Mahasiswa::find($id);
        if ($mahasiswa === null) {
            abort(404, "No mahasiswa has been found.");
        }
        // use compact() to pass the variable to the view
        return view('mahasiswa.edit', compact('mahasiswa'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Mahasiswa  $mahasiswa
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $mahasiswa = new Mahasiswa();
        $mahasiswa = Mahasiswa::find($id);
        if ($mahasiswa === null) {
            abort(404, "No mahasiswa has been found.");
        }
        $mahasiswa->nama = request('nama');
        $mahasiswa->nim = request('nim');
        $mahasiswa->semester = request('semester');
        $mahasiswa->prodi_id = request('prodi');
        $mahasiswa->angkatan = request('angkatan');
        $mahasiswa->kelas_id = request('kelas');
        $mahasiswa->save();
        return redirect()->route('mahasiswa.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Mahasiswa  $mahasiswa
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $mahasiswa = new mahasiswa();
        $mahasiswa = mahasiswa::find($id);
        if ($mahasiswa === null) {
            abort(404, "No mahasiswa has been found.");
        }

        $mahasiswa->delete();
        return redirect()->route('mahasiswa.index');
    }
}
