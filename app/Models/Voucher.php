<?php

namespace Mep\Models;

use Illuminate\Database\Eloquent\Model;

class Voucher extends Model
{
    //    use SoftDeletingTrait;
    // Add your validation rules here
    public static $rules = [
        'imagen' => 'required',
        'supplier_id' => 'required',
    ];
    // Don't forget to fill this array
    protected $fillable = ['imagen', 'supplier_id'];

    public function suppliers()
    {
        return $this->HasMany('Suppliers', 'id', 'supplier_id');
    }
}
