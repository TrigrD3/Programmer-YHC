<?php

namespace Database\Seeders;

use App\Models\Mahasiswa;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class MahasiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i = 0; $i < 50; $i++) {
            $mahasiswa = new Mahasiswa();
            $mahasiswa->nama = $faker->name();
            $mahasiswa->nim = $faker->unique()->numberBetween(1910817210004, 191081729999);
            $mahasiswa->semester = $faker->numberBetween(1, 14);
            $mahasiswa->prodi_id = $faker->numberBetween(1, 5);
            $mahasiswa->angkatan = $faker->numberBetween(2015, 2022);
            $mahasiswa->kelas_id = $faker->numberBetween(1, 4);
            $mahasiswa->save();
        }
    }
}
