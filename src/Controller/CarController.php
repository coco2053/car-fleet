<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\CarRepository;
use App\Form\CarType;

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

    /**
     * @Route("/ajouter", name="create_car")
     *
     */
    public function create(Request $request, EntityManagerInterface $manager)
    {

        $form = $this->createForm(CarType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
             $car = $form->getData();

            $manager->persist($car);
            $manager->flush();

            $this->addFlash(
                'notice',
                'Le véhicule a bien été ajouté !'
            );

            return $this->redirectToRoute('home');
        }

        return $this->render('car/create.html.twig', [
            'form' => $form->createView()
        ]);
    }
}
