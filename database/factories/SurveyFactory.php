<?php

namespace Database\Factories;

use App\Models\Survey;
use Illuminate\Database\Eloquent\Factories\Factory;

class SurveyFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Survey::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->sentence,
            'slug' => $this->faker->slug,
            'image' => $this->faker->imageUrl(1280, 720),
            'config' => '[{"type":"select","options":["opt 1","opt 2"],"required":false,"caption":"[Select]"},{"type":"textarea","caption":"[-Textarea-]","required":false},{"type":"number","caption":"[*Number*]","min":0,"max":5},{"type":"text","caption":"..Text.."},{"type":"check","caption":"{[Check]}"}]',
            'enabled' => 1,
            'responseLimit' => rand(2, 5),
            'aviableFrom' => $this->faker->dateTimeBetween('+0 days', '+5 days'),
            'aviableTo' => $this->faker->dateTimeBetween('+1 week', '+3 week'),
            'user_id' => rand(1, 5),
        ];
    }
}
