<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\CarRepository;

class CarController extends AbstractController
{
    /**
     * @Route("/", name="home")
     *
     */
    public function list(CarRepository $carRepository)
    {
        $cars = $carRepository->findAll();
        return $this->render('car/index.html.twig', [
            'cars' => $cars,
        ]);
    }
}
