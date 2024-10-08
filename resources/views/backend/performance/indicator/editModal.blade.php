<div class="modal fade lead-modal" id="lead-modal" aria-labelledby="modalLabel" aria-hidden="true">
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
                        <form action="{{ $data['url'] }}" method="POST" id="modal_values">
                            @csrf
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <div class="form-group mb-3">
                                        <label for="name" class="form-label">
                                            {{ _trans('common.Department') }}
                                            <span class="text-danger">*</span>
                                        </label>

                                        <select name="department_id"
                                            class="form-select select2-input ot-input mb-3 modal_select2" required>
                                            @foreach ($data['departments'] as $department)
                                                <option
                                                    {{ $department->id == @$data['edit']->department_id ? ' selected' : '' }}
                                                    value="{{ $department->id }}">{{ $department->title }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group mb-3">
                                        <label for="designation_id" class="form-label">
                                            {{ _trans('common.Designation') }}
                                            <span class="text-danger">*</span>
                                        </label>
                                        <select name="designation_id"
                                            class="form-select select2-input ot-input mb-3 modal_select2" required>
                                            @foreach ($data['designations'] as $designation)
                                                <option
                                                    {{ $designation->id == @$data['edit']->designation_id ? ' selected' : '' }}
                                                    value="{{ $designation->id }}">{{ $designation->title }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="form-group mb-3">
                                        <label for="shift_id" class="form-label">
                                            {{ _trans('common.Shift') }}
                                            <span class="text-danger">*</span>
                                        </label>
                                        <select name="shift_id"
                                            class="form-select select2-input ot-input mb-3 modal_select2" required>
                                            @foreach ($data['shifts'] as $shift)
                                                <option {{ $shift->id == @$data['edit']->shift_id ? ' selected' : '' }}
                                                    value="{{ $shift->id }}">{{ $shift->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="form-group mb-3">
                                        <label for="title" class="form-label">
                                            {{ _trans('performance.Title') }}
                                            <span class="text-danger">*</span>
                                        </label>
                                        <input type="text" name="title" id="title"
                                            placeholder="{{ _trans('performance.Enter Title') }}"
                                            class="form-control ot-form-control ot-input" required
                                            value="{{ @$data['edit'] ? @$data['edit']->name : old('title') }}">
                                        @if ($errors->has('title'))
                                            <div class="error">{{ $errors->first('title') }}</div>
                                        @endif
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                @foreach ($data['competence_types'] as $competence_type)
                                    <div class="col-md-12">
                                        <h6>{{ $competence_type->name }}</h6>
                                    </div>
                                    <hr class="p-0 mt-8">
                                    @foreach ($competence_type->competencies as $competences)
                                        @if (@$data['edit']->rates)
                                            @php
                                                $rate = array_values(
                                                    array_filter($data['edit']->rates, function ($item) use ($competences) {
                                                        return @$item['id'] == $competences->id ? true : false;
                                                    }),
                                                );
                                            @endphp
                                        @endif
                                        <div class="col-6">
                                            <p class="primary-color">{{ $competences->name }}</p>
                                        </div>
                                        <div class="col-6">
                                            <fieldset id="demo1" class="rating">
                                                <input type="radio" {{ @$rate[0]['rating'] == 5 ? ' checked' : '' }}
                                                    id="star5_{{ $competences->id }}"
                                                    name="rating[{{ $competences->id }}]" value="5" />
                                                <label class="full" for="star5_{{ $competences->id }}"
                                                    title="Awesome - 5 stars"></label>
                                                <input type="radio"
                                                    {{ @$rate[0]['rating'] == 4.5 ? ' checked' : '' }}
                                                    id="star4half_{{ $competences->id }}"
                                                    name="rating[{{ $competences->id }}]" value="4.5" />
                                                <label class="half" for="star4half_{{ $competences->id }}"
                                                    title="Pretty good - 4.5 stars"> </label>
                                                <input type="radio" {{ @$rate[0]['rating'] == 4 ? ' checked' : '' }}
                                                    id="star4_{{ $competences->id }}"
                                                    name="rating[{{ $competences->id }}]" value="4" />
                                                <label class="full" for="star4_{{ $competences->id }}"
                                                    title="Pretty good - 4 stars"></label>
                                                <input type="radio"
                                                    {{ @$rate[0]['rating'] == 3.5 ? ' checked' : '' }}
                                                    id="star3half_{{ $competences->id }}"
                                                    name="rating[{{ $competences->id }}]" value="3.5" />
                                                <label class="half" for="star3half_{{ $competences->id }}"
                                                    title="Meh - 3.5 stars"></label>
                                                <input type="radio" {{ @$rate[0]['rating'] == 3 ? ' checked' : '' }}
                                                    id="star3_{{ $competences->id }}"
                                                    name="rating[{{ $competences->id }}]" value="3" />
                                                <label class="full" for="star3_{{ $competences->id }}"
                                                    title="Meh - 3 stars"></label>
                                                <input type="radio"
                                                    {{ @$rate[0]['rating'] == 2.5 ? ' checked' : '' }}
                                                    id="star2half_{{ $competences->id }}"
                                                    name="rating[{{ $competences->id }}]" value="2.5" />
                                                <label class="half" for="star2half_{{ $competences->id }}"
                                                    title="Kinda bad - 2.5 stars"></label>
                                                <input type="radio" {{ @$rate[0]['rating'] == 2 ? ' checked' : '' }}
                                                    id="star2_{{ $competences->id }}"
                                                    name="rating[{{ $competences->id }}]" value="2" />
                                                <label class="full" for="star2_{{ $competences->id }}"
                                                    title="Kinda bad - 2 stars"></label>
                                                <input type="radio"
                                                    {{ @$rate[0]['rating'] == 1.5 ? ' checked' : '' }}
                                                    id="star1half_{{ $competences->id }}"
                                                    name="rating[{{ $competences->id }}]" value="1.5" />
                                                <label class="half" for="star1half_{{ $competences->id }}"
                                                    title="Meh - 1.5 stars"></label>
                                                <input type="radio" {{ @$rate[0]['rating'] == 1 ? ' checked' : '' }}
                                                    id="star1_{{ $competences->id }}"
                                                    name="rating[{{ $competences->id }}]" value="1" />
                                                <label class="full" for="star1_{{ $competences->id }}"
                                                    title="bad time - 1 star"></label>
                                            </fieldset>
                                        </div>
                                    @endforeach
                                @endforeach
                            </div>
                            <div class="form-group d-flex justify-content-end">
                                <button type="button"
                                    class="btn btn-gradian pull-right hit_modal">{{ @$data['button'] }}</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="{{ global_asset('backend/js/fs_d_ecma/modal/__modal.min.js') }}"></script>
