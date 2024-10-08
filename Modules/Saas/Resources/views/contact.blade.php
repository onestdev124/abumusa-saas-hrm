@extends('saas::layouts.master')
@section('title', @$data['title'])
@section('saas_menu')
    @include('saas::partials.basic_saas_menu')
@endsection


@section('content')
<!-- Start pricing Area -->
<section class="pricing-area py-5 mt-5">
    <div class="container">
        <div class="row">
            <div class="top-content col-lg-12 col-md-12 col-sm-12 col-xs-12 mb-3">
                <div class="section-title">
                    <h1>{{ @$data['title'] }}</h1>
                </div>
            </div>
        </div>

    </div>



    <div class=" new-main-content">
        <div class="ltn__contact-address-area mt-70 mb-50 ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="text-center mb-25">Address
                        </h2>
                    </div>
                </div>

                <div class="row justify-content-center">
                    <div class="col-lg-4 col-sm-6">
                        <div class="ltn__contact-address-item ltn__contact-address-item-3 box-shadow card-border">
                            <div class="ltn__contact-address-icon">
                                <img src="{{url('frontend/assets/email.png')}}" alt="Icon Image">
                            </div>
                            <h3>Email Address</h3>

                            <p class="contact-details">contact@24hourworx.com <br>
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="ltn__contact-address-item ltn__contact-address-item-3 box-shadow card-border">
                            <div class="ltn__contact-address-icon">
                                <img src="{{url('frontend/assets/phone-call.png')}}" alt="Icon Image">
                            </div>
                            <h3>Phone No
                            </h3>
                            <p class="contact-details">+ 09638303030 <br></p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="ltn__contact-address-item ltn__contact-address-item-3 box-shadow card-border">
                            <div class="ltn__contact-address-icon">
                                <img src="{{url('frontend/assets/placeholder.png')}}" alt="Icon Image">
                            </div>
                            <h3>Office Address
                            </h3>
                            <p class="contact-details">House# 148, Road# 13/B, Block-E, Banani, Dhaka</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- CONTACT ADDRESS AREA END -->

        <!-- CONTACT MESSAGE AREA START -->
        <div class="ltn__contact-message-area mb-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div
                            class="ltn__form-box contact-form-box box-shadow card-bg-new contact-form-box-cus earn-today-form">
                            {{-- section title --}}
                            <div class="section-title-area">
                                <h2 class="text-center">Contact With Us</h2>
                            </div>
                            {{-- laravel success message show here --}}
                            @if(session('success'))
                            <div class="alert alert-success">
                                {{session('success')}}
                            </div>
                            @endif
                            {{-- laravel error message show here --}}
                            {{-- contact form --}}
                            <div class="contact-form-container">
                                <form id="contact-form " class="contact_form" action="{{ route('saas.contact') }}"
                                    method="post">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="error-margin">
                                                <input type="text" name="name" placeholder="Name *"
                                                    value="{{ old('name') }}" autocomplete="off">
                                                <small class="text-danger contact_name"></small>
                                                @error('name')
                                                <small class="text-danger">{{ $message }}</small>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="error-margin">
                                                <input type="email" name="email" placeholder="Email *"
                                                    value="{{ old('email') }}" autocomplete="off">
                                                <small class="text-danger contact_email"></small>
                                                @error('email')
                                                <small class="text-danger">{{ $message }}</small>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="lg-device-contact-form">
                                                <select class="nice-select" name="contact_for">
                                                    <option value="" disabled>Contact For *</option>
                                                    <option value="0" {{ old('contact_for')==0? 'selected' :'' }}
                                                        selected>Support </option>
                                                    <option value="1" {{ old('contact_for')==1? 'selected' :'' }}>Query
                                                    </option>
                                                </select>
                                                <small class="text-danger contact_service_type"></small>
                                                @error('contact_for')
                                                <small class="text-danger">{{ $message }}</small>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="error-margin">
                                                <input type="number" name="phone" placeholder="Phone No"
                                                    value="{{ old('phone') }}" autocomplete="off">
                                                <small class="text-danger contact_phone"></small>
                                                @error('phone')
                                                <small class="text-danger">{{ $message }}</small>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <textarea name="message"
                                                placeholder="Enter Message *">{{ old('message') }} </textarea>
                                            <small class="text-danger contact_message"></small>
                                            @error('message')
                                            <small class="text-danger">{{ $message }}</small>
                                            @enderror
                                        </div>

                                        <div class="col-md-12 text-center mt-4">
                                            <button class="btn gradient-btn login-panel-btn contact_btn"
                                                href="javascript:void(0)">Send Message</button>
                                        </div>
                                        <p class="form-messege mb-0 mt-20"></p>
                                    </div>
                                </form>
                            </div>

                        </div>

                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">

                    </div>
                </div>
            </div>
        </div>

    </div>

</section>
<!-- End pricing Area -->


@endsection