<?php

namespace Sandofvega\Bdgeocode\Seeds;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DistrictsTableSeeder extends Seeder
{
    public function run()
    {
        $districts = json_decode(file_get_contents(__DIR__.'/../data/json/districts.json'), true);
        DB::table('districts')->insert($districts);
    }
}
