<?php

namespace Database\Seeders\Admin;

use App\Helpers\CoreApp\Traits\PermissionTrait;
use App\Models\Role\Role;
use Illuminate\Database\Seeder;

class RoleSeeder extends Seeder
{
    use PermissionTrait;

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $input = session()->get('input');

        if ($input) {
            $roles = [
                'superadmin',
                'admin',
                'hr',
                'staff',
            ];

            foreach ($roles as $key => $role) {
                Role::updateOrCreate([
                    'name' => $role,
                    'slug' => $role,
                    'company_id' => $input['company_id'],
                    'branch_id' => $input['branch_id'],
                ], [
                    'permissions' => json_encode($this->customPermissions($role)),
                    'status_id' => 1,
                    'app_login' => 1,
                    'web_login' => 1,
                ]);
            }
        } else {
            Role::updateOrCreate([
                'name' => 'superadmin',
                'slug' => 'superadmin',
                'company_id' => 1,
            ], [
                'permissions' => json_encode([]),
                'status_id' => 1,
                'app_login' => 1,
                'web_login' => 1,
            ]);
        }
    }
}
