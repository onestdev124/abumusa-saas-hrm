<div class="modal  fade lead-modal in" id="lead-modal" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content data">
            <div class="modal-header modal-header-image mb-3">
                <h5 class="modal-title text-white">{{ @$data['title'] }} </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <i class="fa fa-times text-white" aria-hidden="true"></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="row p-2">
                    <div class="col-md-12">
                        <form action="{{ $data['url'] }}" method="POST">
                            @csrf
                            <div class="form-group mb-3">
                                <label class="form-label">{{ _trans('common.Expect Amount') }}</label>
                                <input type="number" name="expect_amount" class="form-control ot-form-control ot-input"
                                    placeholder="{{ _trans('common.Expect Amount') }}" step=0.01
                                    value="{{ @$data['travel'] ? $data['travel']->expect_amount : old('amount') }}"
                                    disabled>
                            </div>

                            <div class="form-group mb-3">
                                <label class="form-label">{{ _trans('common.Approve Amount') }} <span
                                        class="text-danger">*</span></label>
                                <input type="number" name="amount" class="form-control ot-form-control ot-input"
                                    value="{{ @$data['travel']->amount }}" required
                                    placeholder="{{ _trans('common.Approve Amount') }}">
                            </div>
                            <div class="form-group mb-3">
                                <label class="form-label">{{ _trans('common.Status') }} <span
                                        class="text-danger">*</span></label>
                                <select name="status" class="form-control modal_select2" required>
                                    <option {{ @$data['travel']->status_id == 2 ? 'selected' : '' }} value="2">
                                        {{ _trans('common.Pending') }} </option>
                                    <option {{ @$data['travel']->status_id == 5 ? 'selected' : '' }} value="5">
                                        {{ _trans('common.Approved') }} </option>
                                    <option {{ @$data['travel']->status_id == 6 ? 'selected' : '' }} value="6">
                                        {{ _trans('common.Rejected') }} </option>
                                </select>

                            </div>
                            <div class="form-group text-right d-flex justify-content-end">
                                <button type="submit"
                                    class="btn btn-gradian pull-right"><b>{{ @$data['button'] }}</b></button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="{{ global_asset('backend/js/fs_d_ecma/modal/__modal.min.js') }}"></script>
