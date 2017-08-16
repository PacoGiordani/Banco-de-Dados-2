create database banco3;

use banco3;

create table regiao (id integer, nome varchar(40), primary key (id));

create table vendedor (id integer, nome varchar(40), cpf varchar(12), telefone varchar(15), id_regiao integer, primary key(id), foreign key (id_regiao) references regiao(id));

create table pontoEstrategico(id integer, nome varchar(40), primary key (id), id_regiao integer, foreign key (id_regiao) references regiao(id));

create table veiculo(id integer, nome varchar(50), marca varchar(20), ano integer, id_vendedor integer, primary key(id), foreign key(id_vendedor) references vendedor(id));

create table notaFiscal (id integer, itens integer, qntd integer, id_vendedor integer, primary key(id), foreign key(id_vendedor) references vendedor(id));

create table produto(id integer, nome varchar(40), marca varchar(20), preco float, status boolean, id_notaFiscal integer, primary key(id), foreign key(id_notaFiscal) references notaFiscal(id));
