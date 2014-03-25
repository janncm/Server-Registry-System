CREATE TABLE responsavel(

id_responsavel serial NOT NULL PRIMARY KEY,

nome_responsavel varchar(45),

contato varchar(45),

area_responsavel varchar(45)
);






CREATE TABLE vlan(

id_vlan serial NOT NULL PRIMARY KEY,

vlan integer,
descricao varchar(90)
);




CREATE TABLE servidor(

id_servidor serial NOT NULL PRIMARY KEY,

nome_servidor varchar(45),
ip varchar(45),

ambiente varchar(45),
servicos varchar(45),

outros_requisitos varchar(45),

chamado varchar(45),

plataforma varchar(45),

sistema_operacional varchar(45),

projetos_relacionados varchar(45),

grupo varchar(45),

status varchar(45),

vlan serial REFERENCES vlan(id_vlan)
);




CREATE TABLE responsavel_servidor(

id_responsavel serial REFERENCES responsavel(id_responsavel),

id_servidor serial REFERENCES servidor(id_servidor)
);




CREATE TABLE alteracao(

id_alteracao serial NOT NULL PRIMARY KEY,

data timestamp,
id_usuario integer,

id_servidor serial REFERENCES servidor(id_servidor)
);




CREATE TABLE senha_root(

id_senha_root serial NOT NULL PRIMARY KEY,

senha varchar(45),

servidor varchar(45),

cai varchar(45),

data_inicio timestamp,

data_fim timestamp,

id_servidor serial REFERENCES servidor(id_servidor)
);




CREATE TABLE ips(

id_ips serial NOT NULL PRIMARY KEY,

ips integer,

status varchar(45),
id_vlan serial REFERENCES vlan(id_vlan)
);






