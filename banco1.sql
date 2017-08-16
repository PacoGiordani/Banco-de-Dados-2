create database banco1;
use banco1;

create table funcionario (id integer, nome varchar(40), matricula integer, primary key (id));

create table dependente(id integer, nome integer, id_funcionario integer, primary key (id), foreign key (id_funcionario) references funcionario(id));

create table curso (id integer, nome varchar(40), ano integer, primary key (id));

create table turma (id_funcionario integer, id_curso integer, foreign key (id_funcionario) references funcionario(id), foreign key (id_curso) references curso(id));

