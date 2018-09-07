<?php

namespace Sandofvega\Bdgeocode\Models;

use Illuminate\Database\Eloquent\Model;

class Union extends Model
{
    public function thana()
    {
        return $this->belongsTo(Thana::class);
    }
}