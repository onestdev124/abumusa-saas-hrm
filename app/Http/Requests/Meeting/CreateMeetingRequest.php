<?php

namespace App\Http\Requests\Meeting;

use Illuminate\Foundation\Http\FormRequest;

class CreateMeetingRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        switch ($this->method()) {
            case 'GET':
            case 'DELETE':
            {
                return [];
            }
            case 'POST' || 'PATCH':
            {
                return [
                    'title' => 'required|max:191',
                    'location' => 'required|max:255',
                    'date' => 'required',
                    'start_time' => 'required | not_in:00:00:00',
                    'end_time' => 'required | not_in:00:00:00',
                    'user_id' => 'required',
                    'attachment' => 'nullable|mimes:jpeg,jpg,png|max:2048',
                    'description' => 'nullable|max:800',
                    'status_id' => 'required',
                ];
            }
            default:
                break;
        }
    }
    public function messages()
    {
        return [
                'title.required' => _trans('validation.Title is required'),
                'status_id.required' => _trans('validation.Status is required'),
                'location.required' => _trans('validation.Location is required'),
                'date.required' => _trans('validation.Date is required'),
                'start_time.required' => _trans('validation.Start time is required'),
                'end_time.required' => _trans('validation.EndTime is required'),
                'user_id.required' => _trans('validation.UserId is required'),
                'attachment.mimes' => _trans('validation.Attachment is not supported'),
                'description.max' => _trans('validation.Description is not more than 800 characters'),             

            ];
    }
}
