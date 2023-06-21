<?php

namespace App\Controller;

use App\Entity\Biometric;
use App\Form\BiometricType;
use App\Repository\BiometricRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/biometric')]
class BiometricController extends AbstractController
{
    #[Route('/', name: 'app_biometric_index', methods: ['GET'])]
    public function index(BiometricRepository $biometricRepository): Response
    {
        return $this->render('biometric/index.html.twig', [
            'biometrics' => $biometricRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_biometric_new', methods: ['GET', 'POST'])]
    public function new(Request $request, BiometricRepository $biometricRepository): Response
    {
        $biometric = new Biometric();
        $form = $this->createForm(BiometricType::class, $biometric);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $biometricRepository->save($biometric, true);

            return $this->redirectToRoute('app_biometric_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('biometric/new.html.twig', [
            'biometric' => $biometric,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_biometric_show', methods: ['GET'])]
    public function show(Biometric $biometric): Response
    {
        return $this->render('biometric/show.html.twig', [
            'biometric' => $biometric,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_biometric_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Biometric $biometric, BiometricRepository $biometricRepository): Response
    {
        $form = $this->createForm(BiometricType::class, $biometric);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $biometricRepository->save($biometric, true);

            return $this->redirectToRoute('app_biometric_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('biometric/edit.html.twig', [
            'biometric' => $biometric,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_biometric_delete', methods: ['POST'])]
    public function delete(Request $request, Biometric $biometric, BiometricRepository $biometricRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$biometric->getId(), $request->request->get('_token'))) {
            $biometricRepository->remove($biometric, true);
        }

        return $this->redirectToRoute('app_biometric_index', [], Response::HTTP_SEE_OTHER);
    }
}
