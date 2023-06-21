<?php

namespace App\Entity;

use App\Repository\InterviewBiometricRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: InterviewBiometricRepository::class)]
class InterviewBiometric
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne]
    #[ORM\JoinColumn(nullable: false)]
    private ?Interview $fk_interview = null;

    #[ORM\ManyToOne]
    #[ORM\JoinColumn(nullable: false)]
    private ?Biometric $fk_biometric = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFkInterview(): ?Interview
    {
        return $this->fk_interview;
    }

    public function setFkInterview(?Interview $fk_interview): static
    {
        $this->fk_interview = $fk_interview;

        return $this;
    }

    public function getFkBiometric(): ?Biometric
    {
        return $this->fk_biometric;
    }

    public function setFkBiometric(?Biometric $fk_biometric): static
    {
        $this->fk_biometric = $fk_biometric;

        return $this;
    }
}
