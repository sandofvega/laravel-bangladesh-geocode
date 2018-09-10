<?php

namespace Sandofvega\Bdgeocode\Seeds;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BdgeocodeSeeder extends Seeder
{
    public function run()
    {
        DB::beginTransaction();

        $this->call(DivisionsTableSeeder::class);
        $this->call(DistrictsTableSeeder::class);
        $this->call(ThanasTableSeeder::class);
        $this->call(UnionsTableSeeder::class);

        DB::commit();
    }
}