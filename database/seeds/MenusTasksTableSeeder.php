<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
use Illuminate\Database\Seeder;
/**
 * Description of MenusTasksTableSeeder
 *
 * @author Anwar Sarmiento
 */
class MenusTasksTableSeeder {
    //put your code here
    public function run() {
        \DB::table('menu_task')->insert([
            'task_id' => 1,
            'menu_id' => 1,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 2,
            'menu_id' => 1,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
            'task_id' => 3,
            'menu_id' => 1,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 4,
            'menu_id' => 1,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
             'task_id' => 5,
            'menu_id' => 1,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
            'task_id' => 1,
            'menu_id' => 2,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 2,
            'menu_id' => 2,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
            'task_id' => 3,
            'menu_id' => 2,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 4,
            'menu_id' => 2,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
             'task_id' => 5,
            'menu_id' => 2,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
            'task_id' => 1,
            'menu_id' => 3,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 2,
            'menu_id' => 3,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
            'task_id' => 3,
            'menu_id' => 3,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 4,
            'menu_id' => 3,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
             'task_id' => 5,
            'menu_id' => 3,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
            'task_id' => 1,
            'menu_id' => 4,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 2,
            'menu_id' => 4,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
            'task_id' => 3,
            'menu_id' => 4,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 4,
            'menu_id' => 4,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
             'task_id' => 5,
            'menu_id' => 4,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
            'task_id' => 1,
            'menu_id' => 5,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 2,
            'menu_id' => 5,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
            'task_id' => 3,
            'menu_id' => 5,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 4,
            'menu_id' => 5,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
             'task_id' => 5,
            'menu_id' => 5,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
            'task_id' => 1,
            'menu_id' => 6,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 2,
            'menu_id' => 6,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
            'task_id' => 3,
            'menu_id' => 6,
			'status'=>0
         ]);
        \DB::table('menu_task')->insert([
             'task_id' => 4,
            'menu_id' => 6,
			'status'=>0
         ]);
		 \DB::table('menu_task')->insert([
             'task_id' => 5,
            'menu_id' => 6,
			'status'=>0
         ]);
    }
}
