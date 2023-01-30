/* LÃ³gico_1: */

CREATE TABLE CLIENTE (
    id INTEGER PRIMARY KEY,
    nome VARCHAR2(50),
    telefone INTEGER,
    dtNascimento DATE,
    cpf INTEGER UNIQUE
);

CREATE TABLE PEDIDO (
    id INTEGER PRIMARY KEY,
    nome VARCHAR2(50),
    descricao VARCHAR(256),
    valor DECIMAL(10,2),
    fk_funcionario_id INTEGER
);

CREATE TABLE FUNCIONARIO (
    id INTEGER PRIMARY KEY,
    nome VARCHAR2(50),
    matricula INTEGER UNIQUE,
    telefone INTEGER
);

CREATE TABLE SOLICITA (
    fk_cliente_id INTEGER,
    fk_pedido_id INTEGER,
    dtHrSolicitacao TIMESTAMP
);
 
ALTER TABLE PEDIDO ADD CONSTRAINT FK_PEDIDO_2
    FOREIGN KEY (fk_funcionario_id)
    REFERENCES FUNCIONARIO (id);
 
ALTER TABLE SOLICITA ADD CONSTRAINT FK_SOLICITA_1
    FOREIGN KEY (fk_cliente_id)
    REFERENCES CLIENTE (id);
 
ALTER TABLE SOLICITA ADD CONSTRAINT FK_SOLICITA_2
    FOREIGN KEY (fk_pedido_id)
    REFERENCES PEDIDO (id);