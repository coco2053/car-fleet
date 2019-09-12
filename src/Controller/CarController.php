<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\CarRepository;
use App\Form\CarType;
use App\Entity\Car;
use Omines\DataTablesBundle\Column\TextColumn;
use Omines\DataTablesBundle\Column\NumberColumn;
use Omines\DataTablesBundle\DataTableFactory;
use Omines\DataTablesBundle\Adapter\Doctrine\ORMAdapter;

class CarController extends AbstractController
{
    private $factory;

    public function __construct(DataTableFactory $factory)
    {
        $this->factory = $factory;
    }

    protected function createDataTable(array $options = [])
    {
        return $this->factory->create($options);
    }

    protected function createDataTableFromType($type, array $typeOptions = [], array $options = [])
    {
        return $this->factory->createFromType($type, $typeOptions, $options);
    }

    /**
     * @Route("/", name="home")
     *
     */
    public function listAjax(Request $request)
    {
        $table = $this->createDataTable()
            ->add('brand', TextColumn::class, ['globalSearchable' => true, 'label' => 'Marque', 'className' => 'bold'])
            ->add('color', TextColumn::class, ['label' => 'Couleur', 'className' => 'bold'])
            ->add('seatNb', NumberColumn::class, ['label' => 'Places', 'className' => 'bold'])
            ->add('fuel', TextColumn::class, ['label' => 'Carburant', 'className' => 'bold'])
            ->add('type', TextColumn::class, ['label' => 'Type', 'className' => 'bold'])
            ->createAdapter(ORMAdapter::class, [
                'entity' => Car::class,
            ])
            ->handleRequest($request);

        if ($table->isCallback()) {
            return $table->getResponse();
        }

        return $this->render('car/list.html.twig', ['datatable' => $table]);
    }


    /**
     * @Route("/admin", name="admin_car")
     *
     */
    public function list(CarRepository $carRepository)
    {
        $cars = $carRepository->findAll();
        return $this->render('car/admin.html.twig', [
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

            return $this->redirectToRoute('admin_car');
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

            return $this->redirectToRoute('admin_car');
        }

        return $this->render('car/edit.html.twig', [
            'form' => $form->createView(),
            'car' => $car
        ]);
    }

    /**
     * @Route("/supprimer/{id}", name="delete_car")
     */
    public function delete(Car $car, EntityManagerInterface $manager)
    {

        $manager->remove($car);

        $manager->flush();

            $this->addFlash(
                'notice',
                'Véhicule supprimé !'
            );

        return $this->redirectToRoute('admin_car');
    }
}
