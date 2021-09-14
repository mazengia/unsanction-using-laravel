<?php

use Illuminate\Support\Str;

return [



            'default' => env('DB_CONNECTION', 'sqlsrv'),
                 

                'connections' => [


                                'sqlsrv' => [
                                                'driver' => 'sqlsrv',
                                                'host' => env('DB_HOST', '10.1.12.100'),
                                                'port' => env('DB_PORT', '1433'),
                                                'database' => env('DB_DATABASE', 'un_sanction'),
                                                'username' => env('DB_USERNAME', 'sa'),
                                                'password' => env('DB_PASSWORD', 'admin123')   ,
                                                'charset'  => 'utf8',
                                                'prefix'   => '',
                                ],

        ],

        'migrations' => 'migrations',



        'redis' => [

                'client' => env('REDIS_CLIENT', 'phpredis'),

                'options' => [
                        'cluster' => env('REDIS_CLUSTER', 'redis'),
                        'prefix' => env('REDIS_PREFIX', Str::slug(env('APP_NAME', 'laravel'), '_').'_database_'),
                ],

                'default' => [
                        'url' => env('REDIS_URL'),
                        'host' => env('REDIS_HOST', '127.0.0.1'),
                        'password' => env('REDIS_PASSWORD', null),
                        'port' => env('REDIS_PORT', '6379'),
                        'database' => env('REDIS_DB', '0'),
                ],

                'cache' => [
                        'url' => env('REDIS_URL'),
                        'host' => env('REDIS_HOST', '127.0.0.1'),
                        'password' => env('REDIS_PASSWORD', null),
                        'port' => env('REDIS_PORT', '6379'),
                        'database' => env('REDIS_CACHE_DB', '1'),
                ],

        ],

];
