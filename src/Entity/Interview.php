<?php

namespace App\Entity;

use App\Repository\InterviewRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: InterviewRepository::class)]
class Interview
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $fecha = null;

    #[ORM\Column(length: 255)]
    private ?string $ciudad = null;

    #[ORM\Column(length: 255)]
    private ?string $h_crimen = null;

    #[ORM\Column(length: 255)]
    private ?string $testigo = null;

    #[ORM\Column(length: 255)]
    private ?string $t_crimen = null;

    #[ORM\Column(length: 1000)]
    private ?string $transcripcion = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFecha(): ?string
    {
        return $this->fecha;
    }

    public function setFecha(string $fecha): static
    {
        $this->fecha = $fecha;

        return $this;
    }

    public function getCiudad(): ?string
    {
        return $this->ciudad;
    }

    public function setCiudad(string $ciudad): static
    {
        $this->ciudad = $ciudad;

        return $this;
    }

    public function getHCrimen(): ?string
    {
        return $this->h_crimen;
    }

    public function setHCrimen(string $h_crimen): static
    {
        $this->h_crimen = $h_crimen;

        return $this;
    }

    public function getTestigo(): ?string
    {
        return $this->testigo;
    }

    public function setTestigo(string $testigo): static
    {
        $this->testigo = $testigo;

        return $this;
    }

    public function getTCrimen(): ?string
    {
        return $this->t_crimen;
    }

    public function setTCrimen(string $t_crimen): static
    {
        $this->t_crimen = $t_crimen;

        return $this;
    }

    public function getTranscripcion(): ?string
    {
        return $this->transcripcion;
    }

    public function setTranscripcion(string $transcripcion): static
    {
        $this->transcripcion = $transcripcion;

        return $this;
    }
}
