<?php

namespace Database\Seeders;

use App\Models\Tarjeta;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class TarjetasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Truncar las tablas antes de insertar los datos
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        DB::table('tarjetas')->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        // Generar datos de prueba
        $faker = Faker::create();

        $marcas = [
            ['nombre' => 'Visa', 'color' => '1771B7'],
            ['nombre' => 'MasterCard', 'color' => 'F77100'],
            ['nombre' => 'American Express', 'color' => 'A7CEAE'],
            ['nombre' => 'Diners Club', 'color' => '585856'],
        ];
        

        for ($i = 0; $i < 10; $i++) {
            $cupo = $faker->numberBetween(1, 5) * 1000000; // Múltiplo de 1 millón entre 1 y 5 millones
            $utilizado = $faker->numberBetween(0, $cupo); // Monto utilizado menor o igual al cupo

            $indexMarca = $faker->numberBetween(0, count($marcas) - 1);

            Tarjeta::create([
                'propietario' => $faker->firstname.' '.$faker->lastname,
                'marca' => $marcas[$indexMarca]['nombre'],
                'color' => $marcas[$indexMarca]['color'],
                'numero' => $faker->creditCardNumber,
                'valido_hasta' => $faker->creditCardExpirationDateString, // MM/YY
                'cupo' => $cupo,
                'monto_utilizado' => $utilizado,
            ]);
        }
    }
}

