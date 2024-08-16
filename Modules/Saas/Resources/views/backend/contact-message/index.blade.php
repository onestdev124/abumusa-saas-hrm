@extends('backend.layouts.app')
@section('title', @$data['title'])
@section('content')
    {!! breadcrumb([
        'title' => @$data['title'],
        route('admin.dashboard') => _trans('common.Dashboard'),
        '#' => @$data['title'],
    ]) !!}

    <div class=" table-content table-basic ">
        <div class="card">
            <div class="card-body">
                <div
                    class="table-toolbar d-flex flex-wrap gap-2 flex-xl-row justify-content-center justify-content-xxl-between align-content-center pb-3">
                    <div class="align-self-center">
                        <div class="d-flex flex-wrap gap-2  flex-lg-row justify-content-center align-content-center">
                            <div class="align-self-center">
                                <label>
                                    <span class="mr-8">{{ _trans('common.Show') }}</span>
                                    <select class="form-select d-inline-block" id="entries"
                                        onchange="contactMessageDatatable()">
                                        <option selected value="10">{{ _trans('10') }}</option>
                                        <option value="25">{{ _trans('25') }}</option>
                                        <option value="50">{{ _trans('50') }}</option>
                                        <option value="100">{{ _trans('100') }}</option>
                                    </select>
                                    <span class="ml-8">{{ _trans('common.Entries') }}</span>
                                </label>
                            </div>
                            <div class="align-self-center">
                                <div class="search-box d-flex">
                                    <input class="form-control" placeholder="{{ _trans('common.Search') }}" name="search"
                                        onkeyup="contactMessageDatatable()" autocomplete="off">
                                    <span class="icon"><i class="fa-solid fa-magnifying-glass"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive  min-height-500">
                    @include('backend.partials.table')
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
    @include('backend.partials.table_js')
@endsection
