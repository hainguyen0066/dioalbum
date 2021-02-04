<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class AlbumMedia extends Model
{
    use Resizable;

    public function album(): BelongsTo
    {
        return $this->belongsTo(Album::class, 'album_id', 'id');
    }
}
