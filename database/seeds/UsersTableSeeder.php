<?php

use Illuminate\Database\Seeder;

use App\Profile;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker\Factory::create();

        $limit = 50;

        for ($i = 0; $i < $limit; $i++) {
            
            $dataUser = new User();
            $dataUser->name = $faker->name;
            $dataUser->username = $faker->userName;
            $dataUser->usertype = 'member';
            $dataUser->email = $faker->unique()->safeEmail;
            $dataUser->email_verified_at = now();
            $dataUser->password = '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'; // password
            $dataUser->remember_token = now();
            $dataUser->save();

            $profileData = new Profile();
            $profileData->userid = $dataUser->id;
            $profileData->address = $faker->address;
            $profileData->contactnum = $faker->e164PhoneNumber;
            $profileData->profileimage ='profile.jpg';
            $profileData->save();
            
            // DB::table('users')->insert([ //,
            //     'name' => $faker->name,
            //     'username' => rtrim($faker->name),
            //     'usertype' => 'member',
            //     'email' => $faker->unique()->safeEmail,
            //     'email_verified_at' => now(),
            //     'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 
            //     'remember_token' => Str::random(10),
            // ]);
        }
    }
}
