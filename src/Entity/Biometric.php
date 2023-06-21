<?php

namespace App\Entity;

use App\Repository\BiometricRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: BiometricRepository::class)]
class Biometric
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $nombre = null;

    #[ORM\Column(length: 255)]
    private ?string $c_ojos = null;

    #[ORM\Column(length: 255)]
    private ?string $c_cabello = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNombre(): ?string
    {
        return $this->nombre;
    }

    public function setNombre(string $nombre): static
    {
        $this->nombre = $nombre;

        return $this;
    }

    public function getCOjos(): ?string
    {
        return $this->c_ojos;
    }

    public function setCOjos(string $c_ojos): static
    {
        $this->c_ojos = $c_ojos;

        return $this;
    }

    public function getCCabello(): ?string
    {
        return $this->c_cabello;
    }

    public function setCCabello(string $c_cabello): static
    {
        $this->c_cabello = $c_cabello;

        return $this;
    }
}
