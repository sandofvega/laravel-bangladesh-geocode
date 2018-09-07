<?php

namespace Sandofvega\Bdgeocode\Seeds;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ThanasTableSeeder extends Seeder
{
    public function run()
    {
        $thanas = json_decode(file_get_contents(__DIR__.'/../../data/json/thanas.json'), true);
        DB::table('thanas')->insert($thanas);
    }
}
