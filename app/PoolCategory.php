<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PoolCategory extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'pool_category';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'image', 'is_active'
    ];
}
