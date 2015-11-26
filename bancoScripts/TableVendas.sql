create table vendas
(
vendaid INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
descricaoProduto varchar (255),
valorunitario double,
quantidade int ,
total double,

CONSTRAINT primary_key_v PRIMARY KEY (vendaid)
)
