<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Staudenmeir\EloquentHasManyDeep\HasRelationships as HasManyDeep;

class Division extends Model
{
    use HasManyDeep;

    public $timestamps = false;

    public function districts()
    {
        return $this->hasMany(District::class);
    }

    public function thanas()
    {
        return $this->hasManyThrough(Thana::class, District::class);
    }

    public function unions()
    {
        return $this->hasManyDeep(Union::class, [District::class, Thana::class]);
    }
}