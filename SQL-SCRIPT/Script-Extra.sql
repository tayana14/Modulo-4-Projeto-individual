CREATE TABLE `aluno` (
  `matricula` varchar(255) PRIMARY KEY NOT NULL,
  `nome` varchar(255),
  `id_curso` int,
  `id_turma` int,
  `id_professor` int
);

CREATE TABLE `curso` (
  `id_curso` int PRIMARY KEY NOT NULL,
  `curso` varchar(255),
  `id_professor` int,
  `turno` varchar(255)
);

CREATE TABLE `professor` (
  `id_professor` int PRIMARY KEY NOT NULL,
  `nome` varchar(255),
  `salario` int,
  `turno` varchar(255)
);

CREATE TABLE `turma` (
  `id_turma` int PRIMARY KEY NOT NULL,
  `id_professor` int,
  `monitores` varchar(255),
  `turno` varchar(255)
);

ALTER TABLE `aluno` ADD FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`);

ALTER TABLE `aluno` ADD FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`);

ALTER TABLE `aluno` ADD FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`);

ALTER TABLE `curso` ADD FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`);

ALTER TABLE `turma` ADD FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`);