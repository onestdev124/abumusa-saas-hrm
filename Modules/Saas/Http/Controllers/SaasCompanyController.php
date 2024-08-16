<?php

namespace Modules\Saas\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Company\Company;
use Illuminate\Routing\Controller;
use App\Models\Hrm\Country\Country;
use Brian2694\Toastr\Facades\Toastr;
use Modules\Saas\Entities\PlanFeature;
use Modules\Saas\Entities\PlanDurationType;
use Modules\Saas\Entities\PricingPlanPrice;
use Illuminate\Contracts\Support\Renderable;
use Modules\Saas\Http\Requests\CompanyRequest;
use Modules\Saas\Enums\PricingPlanDurationType;
use Modules\Saas\Repositories\CompanyRepository;
use App\Helpers\CoreApp\Traits\ApiReturnFormatTrait;
use GuzzleHttp\Client;
use Modules\Saas\Http\Requests\CheckoutStoreRequest;

class SaasCompanyController extends Controller
{
    use ApiReturnFormatTrait;
    protected $companyRepository;

    public function __construct(CompanyRepository $companyRepository)
    {
        $this->companyRepository = $companyRepository;
    }
    /**
     * Display a listing of the resource.
     * @return Renderable
     */

    public function companyList()
    {
        $data = Company::where(['status_id' => 1])->get();
        $collection = $data->map(function ($data) {
            $subdomain = $data->subdomain;

            if ($subdomain) {
                $url = 'http://' . $subdomain . '/api/V11/';
            } else {
                $url = url('/api/V11/');
            }
            return [
                'id' => $data->id,
                'company_name' => $data->company_name,
                'subdomain' => $subdomain ?? env('APP_URL'),
                'url' => $url,
            ];
        });
        return $this->responseWithSuccess('Company List', $collection, 200);
    }

    public function index(Request $request)
    {
        if ($request->ajax()) {
            return $this->companyRepository->table($request);
        }
        $data['title'] = _trans('common.Companies');
        $data['class'] = 'company_table';
        $data['fields'] = $this->companyRepository->fields();
        $data['checkbox'] = true;
        return view('saas::company.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        try {
            if (request()->filled('pricing_plan_price_id')) {
                $data['pricingPlanPrice'] = PricingPlanPrice::with('pricingPlan', 'planDurationType')->where('id', request('pricing_plan_price_id'))->where('status_id', 1)->first();
            
                if (!$data['pricingPlanPrice']) {
                    Toastr::warning(_trans('response.Please select a plan first'), 'Warning');
                    return redirect()->route('saas.company.create');
                }
            }

            $data['title']          = _trans('common.Create Company');
            $data['url']            = route('saas.company.store');
            $data['planFeatures']   = PlanFeature::where('status_id', 1)->pluck('title', 'id');

            $data['pricingPlans']   = PlanDurationType::query()
                                    ->where('status_id', 1)
                                    ->whereHas('pricingPlanPrices', function ($q) {
                                        $q->where('status_id', 1)
                                        ->whereHas('pricingPlan', fn ($q) => $q->where('status_id', 1));
                                    })
                                    ->with(['pricingPlanPrices' => function ($q) {
                                        $q->where('status_id', 1)
                                        ->whereHas('pricingPlan', fn ($q) => $q->where('status_id', 1))
                                        ->with(['pricingPlan' => function ($q) {
                                            $q->where('status_id', 1)
                                            ->select('id', 'name', 'employee_limit', 'is_employee_limit', 'basic_price', 'is_popular');
                                        }])
                                        ->select('id', 'pricing_plan_id', 'plan_duration_type_id', 'price');
                                    }])
                                    ->get(['id', 'name']);
                                    
            $data['countries']      = Country::pluck('name', 'id');

            if (request()->filled('pricing_plan_price_id')) {
                $data['startDate']  = Carbon::now()->format('M d, Y');

                if (PricingPlanDurationType::MONTHLY == @$data['pricingPlanPrice']->planDurationType->name) {
                    $data['endDate'] = Carbon::now()->addMonths(1)->format('M d, Y');
                } elseif (PricingPlanDurationType::QUARTERLY == @$data['pricingPlanPrice']->planDurationType->name) {
                    $data['endDate'] = Carbon::now()->addMonths(3)->format('M d, Y');
                } elseif (PricingPlanDurationType::HALF_YEARLY == @$data['pricingPlanPrice']->planDurationType->name) {
                    $data['endDate'] = Carbon::now()->addMonths(6)->format('M d, Y');
                } elseif (PricingPlanDurationType::YEARLY == @$data['pricingPlanPrice']->planDurationType->name) {
                    $data['endDate'] = Carbon::now()->addMonths(12)->format('M d, Y');
                } elseif (PricingPlanDurationType::LIFETIME == @$data['pricingPlanPrice']->planDurationType->name) {
                    $data['endDate'] = Carbon::now()->addMonths(600)->format('M d, Y');
                }
            }
            
            return view('saas::company.create', compact('data'));
        } catch (\Throwable $th) {
            return response()->json('fail');
        }
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function createModal()
    {
        try {
            $data['title'] = _trans('common.Create Company');
            $data['url'] = route('saas.company.store');
            $data['attributes'] = $this->companyRepository->createAttributes();
            @$data['button'] = _trans('common.Save');
            return view('backend.modal.create_company', compact('data'));
        } catch (\Throwable $th) {
            return response()->json('fail');
        }
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(CheckoutStoreRequest $request)
    {
        try {

            $this->companyRepository->storeCompany($request);
            
            $message = _trans('message.Company has been created successfully.') . ' ' . _trans('message.Company approval is currently in progress; kindly allow some time for the final approval to be processed.');
            
            Toastr::success($message, 'Success');
            return redirect()->route('saas.company.list');

        } catch (\Throwable $th) {
            Toastr::error(_trans('response.Something went wrong.'), 'Error');
            return redirect()->back();
        }
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('saas::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit(Company $company)
    {
        try {
            $data['title'] = _trans('common.Edit Company');
            $data['url'] = route('saas.company.update', $company->id);
            $data['attributes'] = $this->companyRepository->editAttributes($company);
            @$data['button'] = _trans('common.Update');
            return view('backend.modal.create', compact('data'));
        } catch (\Throwable $th) {
            return response()->json('fail');
        }
    }

    // status change
    public function statusUpdate(Request $request)
    {
        if (demoCheck()) {
            return $this->responseWithError(_trans('message.You cannot do it for demo'), [], 400);
        }
        return $this->companyRepository->statusUpdate($request);
    }
    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(Request $request, $id)
    {
        try {
            $this->companyRepository->update($request, $id);
            return $this->responseWithSuccess('Company Updated Successfully', [], 200);
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        //
    }
}
