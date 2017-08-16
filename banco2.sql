create database banco2;

use banco2;

create table programador (id integer, nome varchar(40), matricula integer, setor varchar(20), nivel integer, primary key (id));

create table programa (id integer, nome varchar(40), tempoEstimado time, nivelDificuldade integer, primary key (id));

create table projeto (id_programador integer, id_programa integer, foreign key(id_programador) references programador(id), foreign key(id_programa) references programa(id));
