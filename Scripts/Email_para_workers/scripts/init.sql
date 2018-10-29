--criando um banco de dados chamado email_sender
create database email_sender;

--psql possui o comando \c para poder se conectar com um banco de dados
\c email_sender

--criando a estrutura das tabelas
create table emails{
    id serial not null,
    data timestamp not null default current_timestamp,
    assunto varchar(100) not null,
    mensagem varchar(250) not null
};