<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230621201829 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE biometric DROP t_zapato, DROP genero, DROP tipo_tatuaje, DROP f_entrada, DROP h_entrada, DROP f_salida, DROP h_salida');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE biometric ADD t_zapato INT NOT NULL, ADD genero INT NOT NULL, ADD tipo_tatuaje INT NOT NULL, ADD f_entrada INT NOT NULL, ADD h_entrada INT NOT NULL, ADD f_salida INT NOT NULL, ADD h_salida INT NOT NULL');
    }
}
