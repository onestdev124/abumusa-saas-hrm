<?php

namespace Modules\Saas\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Brian2694\Toastr\Facades\Toastr;
use App\Http\Requests\SubscriptionProductRequest;
use App\Http\Requests\SubscriptionCurrencyRequest;
use App\Helpers\CoreApp\Traits\ApiReturnFormatTrait;
use Modules\Saas\Entities\SubscriptionProduct;
use Modules\Saas\Entities\SubscriptionCurrency;
use Modules\Saas\Repositories\SubscriptionProductRepositoryInterface;
use Modules\Saas\Repositories\SubscriptionProductPlanRepositoryInterface;

class ProductPlanController extends Controller
{
    use ApiReturnFormatTrait;

    protected $modelRepository;
    protected $title;
    protected $viwPath;
    protected $createPath;
    protected $createModalPath;
    protected $createFormPath;
    protected $editPath;
    protected $className;

    public function __construct(SubscriptionProductPlanRepositoryInterface $modelRepository)
    {
        $this->modelRepository = $modelRepository;
        $this->title = _trans('subscription.Subscription Product Plan');
        $this->viwPath = "saas::backend.subscription.product_plans.index";
        $this->createPath = "saas::backend.subscription.product_plans.create";
        $this->createModalPath = "saas::backend.modal.create";
        $this->createFormPath = "saas::backend.form.create";
        $this->editPath = "saas::backend.subscription.product_plans.edit";
        $this->className = "subscription_product_plans_datatable";
    }

    public function index(Request $request)
    {
        if ($request->ajax()) {
            return $this->modelRepository->table($request);
        }
        $data = [
            'class' => $this->className,
            'fields' => $this->modelRepository->fields(),
            'checkbox' => true,
            'title' => $this->title,
        ];
        return view($this->viwPath, compact('data'));
    }

    public function create()
    {

        try{
            return view($this->createFormPath, [
                'title' => _trans('common.Add') . ' ' . $this->title,
                'url' => route('saas.subscription_product_plans.store'),
                'attributes' => $this->modelRepository->createAttributes(),
                'button' => _trans('common.Save'),
            ]);

        }catch (\Throwable $th) {
            Toastr::error(_trans('response.Something went wrong.'), 'Error');
            return redirect()->back();
        }
    }
  

    public function edit($id)
    {
        $product = $this->modelRepository->find($id);
        try {
            return view($this->createFormPath, [
                'title' => _trans('common.Edit') . ' ' . $this->title,
                'items' => $product,
                'url' => route('saas.subscription_product_plans.update', $product->id),
                'attributes' => $this->modelRepository->editAttributes($product),
                'button' => _trans('common.Update'),
            ]);
        } catch (\Throwable $th) {

            return response()->json('failed', 400);
        }
    }

    public function delete(SubscriptionProduct $product)
    {

        return $this->modelRepository->destroy($product);
    }

    public function statusUpdate(Request $request)
    {
        return $this->modelRepository->statusUpdate($request);
    }

    public function deleteData(Request $request)
    {
        return $this->modelRepository->destroyAll($request);
    }

    public function createModal()
    {
        try {
            return view($this->createModalPath, [
                'title' => _trans('common.Create') . ' ' . $this->title,
                'url' => route('saas.subscription_product_plans.store'),
                'attributes' => $this->modelRepository->createAttributes(),
                'button' => _trans('common.Save'),
            ]);
        } catch (\Throwable $th) {
            return response()->json('fail');
        }
    }

    public function store(SubscriptionProductPlanRequest $request)
    {
        try {

            $result = $this->modelRepository->newStore($request);

            if ($result->original['result']) {
                Toastr::success($result->original['message'], 'Success');
                return redirect()->route('saas.subscription_product_plans.index');
            } else {
                Toastr::error($result->original['message'], 'Error');
                return redirect()->back();
            }
        } catch (\Throwable $th) {
            Toastr::error(_trans('response.Something went wrong.'), 'Error');
            return redirect()->back();
        }
    }

    public function editModal( $id)
    {
        $currency = $this->modelRepository->find($id);
        try {
            return view($this->createModalPath, [
                'title' => _trans('common.Edit') . ' ' . $this->title,
                'items' => $currency,
                'url' => route('saas.subscription_product_plans.update', $currency->id),
                'attributes' => $this->modelRepository->editAttributes($currency),
                'button' => _trans('common.Update'),
            ]);
        } catch (\Throwable $th) {

            return response()->json('failed', 400);
        }
    }

    public function update(SubscriptionProductPlanRequest $request, $id)
    {

        try {

            $result = $this->modelRepository->newUpdate($request, $id);
            if ($result->original['result']) {
                Toastr::success($result->original['message'], 'Success');
                return redirect()->route('saas.subscription_product_plans.index');
            } else {
                Toastr::error($result->original['message'], 'Error');
                return redirect()->back();
            }
        } catch (\Throwable $th) {
            Toastr::error(_trans('response.Something went wrong.'), 'Error');
            return redirect()->back();
        }
    }
}
