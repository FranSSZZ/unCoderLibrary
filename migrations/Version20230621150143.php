<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230621150143 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE biometric (id INT AUTO_INCREMENT NOT NULL, nombre VARCHAR(255) NOT NULL, c_ojos VARCHAR(255) NOT NULL, c_cabello VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE interview (id INT AUTO_INCREMENT NOT NULL, fecha VARCHAR(255) NOT NULL, ciudad VARCHAR(255) NOT NULL, h_crimen VARCHAR(255) NOT NULL, testigo VARCHAR(255) NOT NULL, t_crimen VARCHAR(255) NOT NULL, transcripcion VARCHAR(1000) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE interview_biometric (id INT AUTO_INCREMENT NOT NULL, fk_interview_id INT NOT NULL, fk_biometric_id INT NOT NULL, INDEX IDX_29B8CE51740B9F8C (fk_interview_id), INDEX IDX_29B8CE51DA4F008C (fk_biometric_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE interview_biometric ADD CONSTRAINT FK_29B8CE51740B9F8C FOREIGN KEY (fk_interview_id) REFERENCES interview (id)');
        $this->addSql('ALTER TABLE interview_biometric ADD CONSTRAINT FK_29B8CE51DA4F008C FOREIGN KEY (fk_biometric_id) REFERENCES biometric (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE interview_biometric DROP FOREIGN KEY FK_29B8CE51740B9F8C');
        $this->addSql('ALTER TABLE interview_biometric DROP FOREIGN KEY FK_29B8CE51DA4F008C');
        $this->addSql('DROP TABLE biometric');
        $this->addSql('DROP TABLE interview');
        $this->addSql('DROP TABLE interview_biometric');
    }
}
