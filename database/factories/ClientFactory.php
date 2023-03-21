<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ClientFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'cod' => $this->faker->numberBetween($min = 100, $max = 1000),
            'name' => $this->faker->firstNameMale,
            'city' => $this->faker->city
        ];
    }
}
