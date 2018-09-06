<?php

namespace Sandofvega\Bdgeocode\Seeds;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DivisionsTableSeeder extends Seeder
{
    public function run()
    {
        DB::table('divisions')->insert([
            ['name' => 'Barishal', 'bn_name' => 'বরিশাল'],
            ['name' => 'Chattogram', 'bn_name' => 'চট্টগ্রাম'],
            ['name' => 'Dhaka', 'bn_name' => 'ঢাকা'],
            ['name' => 'Khulna', 'bn_name' => 'খুলনা'],
            ['name' => 'Rajshahi', 'bn_name' => 'রাজশাহী'],
            ['name' => 'Rangpur', 'bn_name' => 'রংপুর'],
            ['name' => 'Sylhet', 'bn_name' => 'সিলেট'],
            ['name' => 'Mymensingh', 'bn_name' => 'ময়মনসিংহ']
        ]);
    }
}
