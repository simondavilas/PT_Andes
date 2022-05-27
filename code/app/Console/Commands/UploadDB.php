<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class UploadDB extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'upload:db';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Run migrate of db and upload pre define data';


    //protected $migrator;
    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();

        //$this->migrator = app('migrator');
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        return 0;
    }
}
