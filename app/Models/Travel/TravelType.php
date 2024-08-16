<?php

namespace App\Models\Travel;

use App\Models\Travel\Travel;
use App\Models\coreApp\BaseModel;
use App\Models\Traits\BranchTrait;
use App\Models\Traits\CompanyTrait;
use App\Models\coreApp\Status\Status;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Models\coreApp\Traits\Relationship\StatusRelationTrait;

class TravelType extends BaseModel
{
    use HasFactory,CompanyTrait,StatusRelationTrait,BranchTrait;

    public function status(): BelongsTo
    {
        return $this->belongsTo(Status::class);
    }
    //travels 
    public function travels()
    {
        return $this->hasMany(Travel::class);
    }
}
