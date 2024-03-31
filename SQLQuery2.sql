-- PRODUTOS

CREATE TABLE PRODUTOS (
prod_cod int PRIMARY KEY IDENTITY(1,1) NOT NULL, 
prod_nome varchar (50), 
prod_img varchar (500), 
prod_estq int, 
prod_vlr_vnd decimal(8,2) 
);

-- FUNCIONARIOS

CREATE TABLE FUNCIONARIOS (
fun_cod int PRIMARY KEY IDENTITY(1,1) NOT NULL, 
fun_nome varchar(80),
fun_dt_nasc date,
fun_salario decimal(8,2),
fun_login varchar(12),
fun_senha varchar(12),
fun_tp_usu varchar(20)
);

-- FORNECEDORES

CREATE TABLE FORNECEDORES (
forn_cod int PRIMARY KEY IDENTITY(1,1) NOT NULL,
forn_nm_fantasia varchar(50), 
forn_razao_social varchar(100), 
forn_dt_cad date, 
forn_cnpj bigint, 
forn_ativo bit, 
forn_img varchar(500), 
forn_observacoes varchar(500) 
);

-- CLIENTES

CREATE TABLE CLIENTES (
cli_cod int PRIMARY KEY IDENTITY(1,1) NOT NULL, 
cli_nome varchar(80), 
cli_cpf bigint, 
cli_renda decimal(8,2), 
cli_ativo bit, 
cli_dt_nasc date, 
cli_img varchar(500) 
);

-- FORNECEDOR_TELEFONES

CREATE TABLE FORNECEDOR_TELEFONES (
forn_tel_cod int PRIMARY KEY IDENTITY(1,1) NOT NULL, 
forn_tel_contato varchar(80), 
forn_tel_tipo varchar(20), 
forn_tel_numero varchar(20), 
forn_tel_operadora varchar(15), 
forn_cod int FOREIGN KEY (forn_cod) REFERENCES FORNECEDORES (forn_cod)
);

-- CLIENTE_TELEFONES

CREATE TABLE CLIENTE_TELEFONES (
cli_tel_cod int PRIMARY KEY IDENTITY(1,1) NOT NULL,
cli_tel_contato varchar(80),
cli_tel_tipo varchar(20),
cli_tel_numero varchar(20),
cli_tel_operadora varchar(15),
cli_cod int FOREIGN KEY (cli_cod) REFERENCES CLIENTES (cli_cod)
);

-- FORNECEDOR_ENDERECO
CREATE TABLE FORNECEDOR_ENDERECO (
forn_cod int PRIMARY KEY NOT NULL, 
for_end_cep int, 
for_end_logradouro VARCHAR(100), 
for_end_complemento VARCHAR(50), 
for_end_bairro VARCHAR(50), 
for_end_localizacao VARCHAR(80), 
for_end_uf CHAR(2), 
for_end_numero VARCHAR(10), 
for_end_referencia VARCHAR(100), 
FOREIGN KEY (forn_cod) REFERENCES FORNECEDORES (forn_cod)
);

-- CLIENTE_ENDERECO
CREATE TABLE CLIENTE_ENDERECO (
cli_cod int PRIMARY KEY NOT NULL, 
cli_end_cep int, 
cli_end_logradouro VARCHAR(100), 
cli_end_complemento VARCHAR(50), 
cli_end_bairro VARCHAR(50), 
cli_end_localizacao VARCHAR(80), 
cli_end_uf CHAR(2), 
cli_end_numero VARCHAR(10), 
cli_end_referencia VARCHAR(100), 
FOREIGN KEY (cli_cod) REFERENCES CLIENTES (cli_cod)
);

-- COMPRAS

CREATE TABLE COMPRAS (
comp_cod int PRIMARY KEY IDENTITY(1,1) NOT NULL, 
comp_data date, 
forn_cod int FOREIGN KEY (forn_cod) REFERENCES FORNECEDORES (forn_cod)
);

-- VENDAS

CREATE TABLE VENDAS (
vnd_cod int PRIMARY KEY IDENTITY(1,1) NOT NULL, 
cli_cod int FOREIGN KEY (cli_cod) REFERENCES CLIENTES (cli_cod), 
fun_cod int FOREIGN KEY (fun_cod) REFERENCES FUNCIONARIOS (fun_cod), 
vnd_data date
);

-- FORNECEDOR_PRODUTOS

CREATE TABLE FORNECEDOR_PRODUTOS (
forn_cod int NOT NULL, 
prod_cod int NOT NULL, 
frn_prd_valor decimal(8,2), 
PRIMARY KEY (forn_cod, prod_cod), 
FOREIGN KEY (forn_cod) references FORNECEDORES (forn_cod), 
FOREIGN KEY (prod_cod) references PRODUTOS (prod_cod)
);

-- COMPRA_PRODUTOS

CREATE TABLE COMPRA_PRODUTOS (
comp_cod int NOT NULL, 
prod_cod int NOT NULL, 
cmp_prd_qtd int, 
cmp_prd_valor decimal (8,2), 
PRIMARY KEY (comp_cod, prod_cod), 
FOREIGN KEY (comp_cod) REFERENCES COMPRAS (comp_cod),
FOREIGN KEY (prod_cod) REFERENCES PRODUTOS (prod_cod)
);

-- VENDA_PRODUTOS

CREATE TABLE VENDA_PRODUTOS (
vnd_cod int NOT NULL, 
prod_cod int NOT NULL, 
vnd_prod_qtd int, 
vnd_prod_valor decimal(8,2), 
PRIMARY KEY (vnd_cod, prod_cod), 
FOREIGN KEY (vnd_cod) REFERENCES VENDAS (vnd_cod), 
FOREIGN KEY (prod_cod) REFERENCES PRODUTOS (prod_cod)
);



