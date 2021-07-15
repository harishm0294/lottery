<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'package_id', 'transaction_id', 'checksum', 'status', 'payment', 'payment_mode', 'bank_transaction'
    ];
}
