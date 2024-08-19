<?php

namespace App\Models\Settings;

use App\Models\coreApp\BaseModel;
use App\Models\Settings\Language;
use App\Models\coreApp\Status\Status;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class HrmLanguage extends BaseModel
{
    use HasFactory;

    protected $fillable=['language_id','is_default','status_id'];

    public function language()
    {
        return $this->belongsTo(Language::class, 'language_id');
    }
    public function status(){
        return $this->belongsTo(Status::class, 'status_id');
    }


}
