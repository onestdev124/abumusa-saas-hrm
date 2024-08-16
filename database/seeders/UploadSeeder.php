<?php

namespace Database\Seeders;

use App\Models\Upload;
use Illuminate\Database\Seeder;

class UploadSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach ($this->uploadData() ?? [] as $key => $upload) {
            Upload::firstOrCreate([
                'id' => $upload['id']
            ], [
                'user_id' => $upload['user_id'],
                'file_original_name' => $upload['file_original_name'],
                'file_name' => $upload['file_name'],
                'img_path' => $upload['img_path'],
                'big_path' => $upload['big_path'],
                'small_path' => $upload['small_path'],
                'thumbnail_path' => $upload['thumbnail_path'],
                'extension' => $upload['extension'],
                'type' => $upload['type'],
                'file_size' => $upload['file_size'],
                'width' => $upload['width'],
                'height' => $upload['height'],
                'file_size' => $upload['file_size'],
                'status_id' => 1,
            ]);
        }
    }

    protected function uploadData()
    {
        return [
            [
                'id' => 1,
                'user_id' => 1,
                'file_original_name' => 'dark_logo',
                'file_name' => 'dark_logo.png',
                'img_path' => 'static/dark_logo.png',
                'big_path' => 'static/dark_logo.png',
                'small_path' => 'static/dark_logo.png',
                'thumbnail_path' => 'static/dark_logo.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100
            ],
            [
                'id' => 2,
                'user_id' => 1,
                'file_original_name' => 'white_logo',
                'file_name' => 'white_logo.png',
                'img_path' => 'static/white_logo.png',
                'big_path' => 'static/white_logo.png',
                'small_path' => 'static/white_logo.png',
                'thumbnail_path' => 'static/white_logo.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 3,
                'user_id' => 1,
                'file_original_name' => 'fav',
                'file_name' => 'fav.png',
                'img_path' => 'static/fav.png',
                'big_path' => 'static/fav.png',
                'small_path' => 'static/fav.png',
                'thumbnail_path' => 'static/fav.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 4,
                'user_id' => 1,
                'file_original_name' => 'background_image',
                'file_name' => 'background_image.png',
                'img_path' => 'static/background_image.png',
                'big_path' => 'static/background_image.png',
                'small_path' => 'static/background_image.png',
                'thumbnail_path' => 'static/background_image.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 5,
                'user_id' => 1,
                'file_original_name' => 'android_icon',
                'file_name' => 'android_icon.png',
                'img_path' => 'static/android_icon.png',
                'big_path' => 'static/android_icon.png',
                'small_path' => 'static/android_icon.png',
                'thumbnail_path' => 'static/android_icon.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 6,
                'user_id' => 1,
                'file_original_name' => 'iso_icon',
                'file_name' => 'iso_icon.png',
                'img_path' => 'static/iso_icon.png',
                'big_path' => 'static/iso_icon.png',
                'small_path' => 'static/iso_icon.png',
                'thumbnail_path' => 'static/iso_icon.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 7,
                'user_id' => 1,
                'file_original_name' => 'support',
                'file_name' => 'support.png',
                'img_path' => 'static/support.png',
                'big_path' => 'static/support.png',
                'small_path' => 'static/support.png',
                'thumbnail_path' => 'static/support.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 8,
                'user_id' => 1,
                'file_original_name' => 'attendance',
                'file_name' => 'attendance.png',
                'img_path' => 'static/attendance.png',
                'big_path' => 'static/attendance.png',
                'small_path' => 'static/attendance.png',
                'thumbnail_path' => 'static/attendance.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 9,
                'user_id' => 1,
                'file_original_name' => 'notice',
                'file_name' => 'notice.png',
                'img_path' => 'static/notice.png',
                'big_path' => 'static/notice.png',
                'small_path' => 'static/notice.png',
                'thumbnail_path' => 'static/notice.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 10,
                'user_id' => 1,
                'file_original_name' => 'expense',
                'file_name' => 'expense.png',
                'img_path' => 'static/expense.png',
                'big_path' => 'static/expense.png',
                'small_path' => 'static/expense.png',
                'thumbnail_path' => 'static/expense.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 11,
                'user_id' => 1,
                'file_original_name' => 'leave',
                'file_name' => 'leave.png',
                'img_path' => 'static/leave.png',
                'big_path' => 'static/leave.png',
                'small_path' => 'static/leave.png',
                'thumbnail_path' => 'static/leave.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 12,
                'user_id' => 1,
                'file_original_name' => 'approval',
                'file_name' => 'approval.png',
                'img_path' => 'static/approval.png',
                'big_path' => 'static/approval.png',
                'small_path' => 'static/approval.png',
                'thumbnail_path' => 'static/approval.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 13,
                'user_id' => 1,
                'file_original_name' => 'phonebook',
                'file_name' => 'phonebook.png',
                'img_path' => 'static/phonebook.png',
                'big_path' => 'static/phonebook.png',
                'small_path' => 'static/phonebook.png',
                'thumbnail_path' => 'static/phonebook.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 14,
                'user_id' => 1,
                'file_original_name' => 'visit',
                'file_name' => 'visit.png',
                'img_path' => 'static/visit.png',
                'big_path' => 'static/visit.png',
                'small_path' => 'static/visit.png',
                'thumbnail_path' => 'static/visit.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 15,
                'user_id' => 1,
                'file_original_name' => 'appointments',
                'file_name' => 'appointments.png',
                'img_path' => 'static/appointments.png',
                'big_path' => 'static/appointments.png',
                'small_path' => 'static/appointments.png',
                'thumbnail_path' => 'static/appointments.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 16,
                'user_id' => 1,
                'file_original_name' => 'break',
                'file_name' => 'break.png',
                'img_path' => 'static/break.png',
                'big_path' => 'static/break.png',
                'small_path' => 'static/break.png',
                'thumbnail_path' => 'static/break.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 17,
                'user_id' => 1,
                'file_original_name' => 'report',
                'file_name' => 'report.png',
                'img_path' => 'static/report.png',
                'big_path' => 'static/report.png',
                'small_path' => 'static/report.png',
                'thumbnail_path' => 'static/report.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            //portfolio 
            [
                'id' => 21,
                'user_id' => 1,
                'file_original_name' => 'portfolio1',
                'file_name' => 'portfolio1.png',
                'img_path' => 'static/portfolio1.png',
                'big_path' => 'static/portfolio1.png',
                'small_path' => 'static/portfolio1.png',
                'thumbnail_path' => 'static/portfolio1.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 22,
                'user_id' => 1,
                'file_original_name' => 'portfolio2',
                'file_name' => 'portfolio2.png',
                'img_path' => 'static/portfolio2.png',
                'big_path' => 'static/portfolio2.png',
                'small_path' => 'static/portfolio2.png',
                'thumbnail_path' => 'static/portfolio2.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 23,
                'user_id' => 1,
                'file_original_name' => 'portfolio3',
                'file_name' => 'portfolio3.png',
                'img_path' => 'static/portfolio3.png',
                'big_path' => 'static/portfolio3.png',
                'small_path' => 'static/portfolio3.png',
                'thumbnail_path' => 'static/portfolio3.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 24,
                'user_id' => 1,
                'file_original_name' => 'portfolio4',
                'file_name' => 'portfolio4.png',
                'img_path' => 'static/portfolio4.png',
                'big_path' => 'static/portfolio4.png',
                'small_path' => 'static/portfolio4.png',
                'thumbnail_path' => 'static/portfolio4.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 25,
                'user_id' => 1,
                'file_original_name' => 'portfolio5',
                'file_name' => 'portfolio5.png',
                'img_path' => 'static/portfolio5.png',
                'big_path' => 'static/portfolio5.png',
                'small_path' => 'static/portfolio5.png',
                'thumbnail_path' => 'static/portfolio5.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 26,
                'user_id' => 1,
                'file_original_name' => 'portfolio6',
                'file_name' => 'portfolio6.png',
                'img_path' => 'static/portfolio6.png',
                'big_path' => 'static/portfolio6.png',
                'small_path' => 'static/portfolio6.png',
                'thumbnail_path' => 'static/portfolio6.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100
            ],
            [
                'id' => 27,
                'user_id' => 1,
                'file_original_name' => 'portfolio7',
                'file_name' => 'portfolio7.png',
                'img_path' => 'static/portfolio7.png',
                'big_path' => 'static/portfolio7.png',
                'small_path' => 'static/portfolio7.png',
                'thumbnail_path' => 'static/portfolio7.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 28,
                'user_id' => 1,
                'file_original_name' => 'portfolio8',
                'file_name' => 'portfolio8.png',
                'img_path' => 'static/portfolio8.png',
                'big_path' => 'static/portfolio8.png',
                'small_path' => 'static/portfolio8.png',
                'thumbnail_path' => 'static/portfolio8.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],

            //team ***********************************************
            [
                'id' => 29,
                'user_id' => 1,
                'file_original_name' => 'team1',
                'file_name' => 'team1.png',
                'img_path' => 'static/team1.png',
                'big_path' => 'static/team1.png',
                'small_path' => 'static/team1.png',
                'thumbnail_path' => 'static/team1.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100
            ],
            [
                'id' => 30,
                'user_id' => 1,
                'file_original_name' => 'team2',
                'file_name' => 'team2.png',
                'img_path' => 'static/team2.png',
                'big_path' => 'static/team2.png',
                'small_path' => 'static/team2.png',
                'thumbnail_path' => 'static/team2.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 31,
                'user_id' => 1,
                'file_original_name' => 'team3',
                'file_name' => 'team3.png',
                'img_path' => 'static/team3.png',
                'big_path' => 'static/team3.png',
                'small_path' => 'static/team3.png',
                'thumbnail_path' => 'static/team3.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 32,
                'user_id' => 1,
                'file_original_name' => 'team4',
                'file_name' => 'team4.png',
                'img_path' => 'static/team4.png',
                'big_path' => 'static/team4.png',
                'small_path' => 'static/team4.png',
                'thumbnail_path' => 'static/team4.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 33,
                'user_id' => 1,
                'file_original_name' => 'team5',
                'file_name' => 'team5.png',
                'img_path' => 'static/team5.png',
                'big_path' => 'static/team5.png',
                'small_path' => 'static/team5.png',
                'thumbnail_path' => 'static/team5.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 34,
                'user_id' => 1,
                'file_original_name' => 'team6',
                'file_name' => 'team6.png',
                'img_path' => 'static/team6.png',
                'big_path' => 'static/team6.png',
                'small_path' => 'static/team6.png',
                'thumbnail_path' => 'static/team6.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 35,
                'user_id' => 1,
                'file_original_name' => 'team7',
                'file_name' => 'team7.png',
                'img_path' => 'static/team7.png',
                'big_path' => 'static/team7.png',
                'small_path' => 'static/team7.png',
                'thumbnail_path' => 'static/team7.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ],
            [
                'id' => 36,
                'user_id' => 1,
                'file_original_name' => 'team8',
                'file_name' => 'team8.png',
                'img_path' => 'static/team8.png',
                'big_path' => 'static/team8.png',
                'small_path' => 'static/team8.png',
                'thumbnail_path' => 'static/team8.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 100,
                'height' => 100,
            ], 
            [
                'id' => 37,
                'user_id' => 1,
                'file_original_name' => 'team8',
                'file_name' => 'team8.png',
                'img_path' => 'static/app-screen/screen-1.png',
                'big_path' => 'static/app-screen/screen-1.png',
                'small_path' => 'static/app-screen/screen-1.png',
                'thumbnail_path' => 'static/app-screen/screen-1.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 300,
                'height' => 700,
            ],
            [
                'id' => 38,
                'user_id' => 1,
                'file_original_name' => 'team8',
                'file_name' => 'team8.png',
                'img_path' => 'static/app-screen/screen-2.png',
                'big_path' => 'static/app-screen/screen-2.png',
                'small_path' => 'static/app-screen/screen-2.png',
                'thumbnail_path' => 'static/app-screen/screen-2.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 300,
                'height' => 700,
            ],        
            [
                'id' => 39,
                'user_id' => 1,
                'file_original_name' => 'team8',
                'file_name' => 'team8.png',
                'img_path' => 'static/app-screen/screen-3.png',
                'big_path' => 'static/app-screen/screen-3.png',
                'small_path' => 'static/app-screen/screen-3.png',
                'thumbnail_path' => 'static/app-screen/screen-3.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 300,
                'height' => 700,
            ],

            // frontend dynamic cms image data
            // vendor/Saas/Assets/images/image_1.png
            [
                'id' => 40,
                'user_id' => 1,
                'file_original_name' => 'cms1',
                'file_name' => 'cms1.png',
                'img_path' => 'vendor/Saas/Assets/images/img_1.png',
                'big_path' => 'vendor/Saas/Assets/images/img_1.png',
                'small_path' => 'vendor/Saas/Assets/images/img_1.png',
                'thumbnail_path' => 'vendor/Saas/Assets/images/img_1.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 500,
                'height' => 500,
            ],
            [
                'id' => 41,
                'user_id' => 1,
                'file_original_name' => 'cms2',
                'file_name' => 'cms2.png',
                'img_path' => 'vendor/Saas/Assets/images/img_2.png',
                'big_path' => 'vendor/Saas/Assets/images/img_2.png',
                'small_path' => 'vendor/Saas/Assets/images/img_2.png',
                'thumbnail_path' => 'vendor/Saas/Assets/images/img_2.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 500,
                'height' => 500,
            ],
            [
                'id' => 42,
                'user_id' => 1,
                'file_original_name' => 'cms3',
                'file_name' => 'cms3.png',
                'img_path' => 'vendor/Saas/Assets/images/img_3.png',
                'big_path' => 'vendor/Saas/Assets/images/img_3.png',
                'small_path' => 'vendor/Saas/Assets/images/img_3.png',
                'thumbnail_path' => 'vendor/Saas/Assets/images/img_3.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 500,
                'height' => 500,
            ],
            [
                'id' => 43,
                'user_id' => 1,
                'file_original_name' => 'cms4',
                'file_name' => 'cms4.png',
                'img_path' => 'vendor/Saas/Assets/images/img_4.png',
                'big_path' => 'vendor/Saas/Assets/images/img_4.png',
                'small_path' => 'vendor/Saas/Assets/images/img_4.png',
                'thumbnail_path' => 'vendor/Saas/Assets/images/img_4.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 500,
                'height' => 500,
            ],
            [
                'id' => 44,
                'user_id' => 1,
                'file_original_name' => 'cms5',
                'file_name' => 'cms5.png',
                'img_path' => 'vendor/Saas/Assets/images/img_5.png',
                'big_path' => 'vendor/Saas/Assets/images/img_5.png',
                'small_path' => 'vendor/Saas/Assets/images/img_5.png',
                'thumbnail_path' => 'vendor/Saas/Assets/images/img_5.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 500,
                'height' => 500,
            ],
            // frontend dynamic cms image data end
            
            [
                'id' => 45,
                'user_id' => 1,
                'file_original_name' => 'feature',
                'file_name' => 'feature.png',
                'img_path' => 'vendor/Saas/Assets/images/project.png',
                'big_path' => 'vendor/Saas/Assets/images/project.png',
                'small_path' => 'vendor/Saas/Assets/images/project.png',
                'thumbnail_path' => 'vendor/Saas/Assets/images/project.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 500,
                'height' => 500
            ],
            [
                'id' => 46,
                'user_id' => 1,
                'file_original_name' => 'cms6',
                'file_name' => 'cms6.png',
                'img_path' => 'vendor/Saas/Assets/images/img_6.png',
                'big_path' => 'vendor/Saas/Assets/images/img_6.png',
                'small_path' => 'vendor/Saas/Assets/images/img_6.png',
                'thumbnail_path' => 'vendor/Saas/Assets/images/img_6.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 500,
                'height' => 500
            ],
            [
                'id' => 47,
                'user_id' => 1,
                'file_original_name' => 'cms7',
                'file_name' => 'cms7.png',
                'img_path' => 'vendor/Saas/Assets/images/img_7.png',
                'big_path' => 'vendor/Saas/Assets/images/img_7.png',
                'small_path' => 'vendor/Saas/Assets/images/img_7.png',
                'thumbnail_path' => 'vendor/Saas/Assets/images/img_7.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 500,
                'height' => 500
            ],
            [
                'id' => 48,
                'user_id' => 1,
                'file_original_name' => 'cms8',
                'file_name' => 'cms8.png',
                'img_path' => 'vendor/Saas/Assets/images/img_8.png',
                'big_path' => 'vendor/Saas/Assets/images/img_8.png',
                'small_path' => 'vendor/Saas/Assets/images/img_8.png',
                'thumbnail_path' => 'vendor/Saas/Assets/images/img_8.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 500,
                'height' => 500
            ],
            [
                'id' => 49,
                'user_id' => 1,
                'file_original_name' => 'hero-image',
                'file_name' => 'hero-image.png',
                'img_path' => 'vendor/Saas/Assets/images/hero-image.png',
                'big_path' => 'vendor/Saas/Assets/images/hero-image.png',
                'small_path' => 'vendor/Saas/Assets/images/hero-image.png',
                'thumbnail_path' => 'vendor/Saas/Assets/images/hero-image.png',
                'extension' => '.png',
                'type' => 'png',
                'file_size' => 0,
                'width' => 500,
                'height' => 500
            ],
        ];
    }
}
