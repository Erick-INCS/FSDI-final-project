<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'content'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function getExtractAttribute() {
        return substr(($this->content), 0, strpos(($this->content), ' ', 100));
    }

    public function getMiniextractAttribute() {
        return substr(($this->content), 0, strpos(($this->content), ' ', 40));
    }

    public function sameCat() {
        return $this->where('usr_type_id', $this->usr_type_id)
            ->where('id', '!=', $this->id)
            ->with('user')
            ->take(3)
            ->get();
    }


}
