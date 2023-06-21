<?php

namespace App\Form;

use App\Entity\Interview;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class InterviewType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('fecha')
            ->add('ciudad')
            ->add('h_crimen')
            ->add('testigo')
            ->add('t_crimen')
            ->add('transcripcion')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Interview::class,
        ]);
    }
}
