<?php

namespace App\Faker;

use Faker\Provider\Base;

class PhoneProvider extends Base
{
    const BRAND = [
        'Renault',
        'Citroen',
        'Peugeot',
        'Dacia',
        'Chrisler',
        'Seat',
        'Mercedes',
        'Audi',
        'Fiat',
        'Mitsubishi',
        'Alpha Romeo',
        'BMW',
        'Ford',
        'Honda',
        'HYUNDAI',
        'JEEP',
        'KIA',
        'Land Rover',
        'Maserati',
        'Mini',
        'Nissan',
    ];

    const FUEL = [
        'Essence',
        'Diesel',
        'Hybrid',
        'Electrique',
        'GPL',
    ];

    const COLOR = [
        'noir',
        'blanc',
        'vert',
        'rouge',
        'bleu',
        'gris',
        'orange',
        'rose',
    ];

    const TYPE = [
        'Berline',
        'SUV',
        'Utilitaire',
        'Pick Up',
        'Monospace',
        'Citadine',
        '4X4',
        'Cabriolet',
    ];

    public function brand()
    {
        return self::randomElement(self::BRAND);
    }

    public function fuel()
    {
        return self::randomElement(self::FUEL);
    }

    public function seatNb()
    {
        return rand(1, 10);
    }
    public function color()
    {
        return self::randomElement(self::COLOR);
    }

    public function type()
    {
        return self::randomElement(self::TYPE);
    }
}
