<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\CarRepository;
use App\Form\CarType;
use App\Entity\Car;

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

    /**
     * @Route("/modifier/{id}", name="edit_car")
     *
     */
    public function edit(Car $car, Request $request, EntityManagerInterface $manager)
    {

        $form = $this->createForm(CarType::class, $car);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $manager->persist($car);
            $manager->flush();

            $this->addFlash(
                'notice',
                'Le véhicule a bien été modifié !'
            );

            return $this->redirectToRoute('home');
        }

        return $this->render('car/edit.html.twig', [
            'form' => $form->createView(),
            'car' => $car
        ]);
    }
}
