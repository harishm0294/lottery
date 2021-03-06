<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pool extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'category_id', 'name', 'description', 'image', 'pool_limit', 'ticket_coins','start_time', 'end_time', 'is_active'
    ];
}
