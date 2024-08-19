<?php

namespace App\Models\Payroll;

use App\Models\User;
use App\Models\coreApp\BaseModel;
use App\Models\Traits\BranchTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class SalarySetup extends BaseModel
{
    use HasFactory,BranchTrait;

    public function employee()
    {
        return $this->belongsTo(User::class);
    }

    public function salarySetupAdditionDetails()
    {
        return $this->hasMany(SalarySetupDetails::class)->with('commission')->whereHas('commission', function ($query) {
            $query->where('type', 1);
        });
    }

    public function salarySetupDeductionDetails()
    {
        return $this->hasMany(SalarySetupDetails::class)->with('commission')->whereHas('commission', function ($query) {
            $query->where('type', 2);
        });
    }

    public function salarySetupDetails()
    {
        return $this->hasMany(SalarySetupDetails::class);
    }
}
