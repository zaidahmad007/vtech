<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_details', function (Blueprint $table) {
            $table->id();
            $table->string('state');
            $table->string('city');
            
            $table->string('pincode');
            $table->string('collegecode');
            $table->string('college');
            $table->string('rid');
            $table->string('board');
            $table->string('branch');
            $table->string('standard');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('student_details');
    }
}
