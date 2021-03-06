--------------------------------------------------------
--  Arquivo criado - Quinta-feira-Maio-14-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PRODUTOS
--------------------------------------------------------

  CREATE TABLE "APP"."PRODUTOS" 
   (	"PRO_ID" NUMBER(6) NOT NULL, 
	"PRO_DESCRICAO" VARCHAR2(100 BYTE), 
	"PRO_PRECO" NUMBER(8,2), 
	"PRO_CAM_IMA" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "APP"."PRODUTOS"."PRO_ID" IS 'Chave primária de identificação da tabela produtos';
   COMMENT ON COLUMN "APP"."PRODUTOS"."PRO_DESCRICAO" IS 'Descrição do produto';
   COMMENT ON COLUMN "APP"."PRODUTOS"."PRO_PRECO" IS 'Preço do produto';
   COMMENT ON COLUMN "APP"."PRODUTOS"."PRO_CAM_IMA" IS 'Caminho da imagem referente ao produto no servidor';

--------------------------------------------------------
--  DDL for Index PRO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."PRO_PK" ON "APP"."PRODUTOS" ("PRO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

--------------------------------------------------------
--  Constraints for Table PRODUTOS
--------------------------------------------------------

  ALTER TABLE "APP"."PRODUTOS" ADD CONSTRAINT "PRO_PK" PRIMARY KEY ("PRO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "APP"."PRODUTOS" MODIFY ("PRO_DESCRICAO" NOT NULL ENABLE);
  ALTER TABLE "APP"."PRODUTOS" MODIFY ("PRO_PRECO" NOT NULL ENABLE);

--------------------------------------------------------
--  DDL for Sequence SEQ_PRO
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."SEQ_PRO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

--------------------------------------------------------
--  DDL for Trigger SEQ_PRO
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "APP"."SEQ_PRO" 
    BEFORE INSERT ON APP.PRODUTOS 
    FOR EACH ROW 
BEGIN
:NEW.PRO_ID := APP.SEQ_PRO.NEXTVAL;
END; 
/
ALTER TRIGGER "APP"."SEQ_PRO" ENABLE;

--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

  CREATE TABLE "APP"."USUARIOS" 
   (	"USU_ID" NUMBER(6) NOT NULL, 
	"USU_NOME" VARCHAR2(100 BYTE), 
	"USU_CPF" VARCHAR2(11 BYTE), 
	"USU_FUNCAO" VARCHAR2(50 BYTE), 
	"USU_LOGIN" VARCHAR2(50 BYTE), 
	"USU_SENHA" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "APP"."USUARIOS"."USU_ID" IS 'Chave primária de identificação da tabela usuarios';
   COMMENT ON COLUMN "APP"."USUARIOS"."USU_NOME" IS 'Nome do usuario';
   COMMENT ON COLUMN "APP"."USUARIOS"."USU_CPF" IS 'CPF do usuario';
   COMMENT ON COLUMN "APP"."USUARIOS"."USU_FUNCAO" IS 'Função do usuario';
   COMMENT ON COLUMN "APP"."USUARIOS"."USU_LOGIN" IS 'Login do usuario';
   COMMENT ON COLUMN "APP"."USUARIOS"."USU_SENHA" IS 'senha do usuario';

--------------------------------------------------------
--  DDL for Index USU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."USU_PK" ON "APP"."USUARIOS" ("USU_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

--------------------------------------------------------
--  Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "APP"."USUARIOS" ADD CONSTRAINT "USU_PK" PRIMARY KEY ("USU_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "APP"."USUARIOS" MODIFY ("USU_NOME" NOT NULL ENABLE);
  ALTER TABLE "APP"."USUARIOS" MODIFY ("USU_CPF" NOT NULL ENABLE);
  ALTER TABLE "APP"."USUARIOS" MODIFY ("USU_FUNCAO" NOT NULL ENABLE);
  ALTER TABLE "APP"."USUARIOS" MODIFY ("USU_LOGIN" NOT NULL ENABLE);
  ALTER TABLE "APP"."USUARIOS" MODIFY ("USU_SENHA" NOT NULL ENABLE);

--------------------------------------------------------
--  DDL for Sequence SEQ_USU
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."SEQ_USU"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

--------------------------------------------------------
--  DDL for Trigger SEQ_USU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "APP"."SEQ_USU" 
    BEFORE INSERT ON APP.USUARIOS 
    FOR EACH ROW 
BEGIN
:NEW.USU_ID := APP.SEQ_USU.NEXTVAL;
END; 
/
ALTER TRIGGER "APP"."SEQ_USU" ENABLE;

--------------------------------------------------------
--  DDL for Table FORNECEDORES
--------------------------------------------------------

  CREATE TABLE "APP"."FORNECEDORES" 
   (	"FOR_ID" NUMBER(6) NOT NULL, 
	"FOR_NOME" VARCHAR2(100 BYTE), 
	"FOR_CNPJ_CPF" VARCHAR2(14 BYTE), 
	"FOR_EMAIL" VARCHAR2(50 BYTE), 
	"FOR_LOGRADOURO" VARCHAR2(100 BYTE), 
	"FOR_NUMERO" VARCHAR2(10 BYTE), 
	"FOR_COMPLEMENTO" VARCHAR2(50 BYTE), 
	"FOR_BAIRRO" VARCHAR2(50 BYTE), 
	"FOR_CIDADE" VARCHAR2(50 BYTE), 
	"FOR_ESTADO" VARCHAR2(2 BYTE), 
	"FOR_CEP" VARCHAR2(8 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "APP"."FORNECEDORES"."FOR_ID" IS 'Chave primária de identificação da tabela fornecedores';
   COMMENT ON COLUMN "APP"."FORNECEDORES"."FOR_NOME" IS 'Nome do fornecedor';
   COMMENT ON COLUMN "APP"."FORNECEDORES"."FOR_CNPJ_CPF" IS 'CNPJ ou CPF do fornecedor';
   COMMENT ON COLUMN "APP"."FORNECEDORES"."FOR_EMAIL" IS 'E-mail do fornecedor';
   COMMENT ON COLUMN "APP"."FORNECEDORES"."FOR_LOGRADOURO" IS 'Logradouro do endereço do fornecedor';
   COMMENT ON COLUMN "APP"."FORNECEDORES"."FOR_NUMERO" IS 'Número do endereço do fornecedor';
   COMMENT ON COLUMN "APP"."FORNECEDORES"."FOR_COMPLEMENTO" IS 'Complemento do endereço do fornecedor';
   COMMENT ON COLUMN "APP"."FORNECEDORES"."FOR_BAIRRO" IS 'Bairro do endereço do fornecedor';
   COMMENT ON COLUMN "APP"."FORNECEDORES"."FOR_CIDADE" IS 'Cidade do endereço do fornecedor';
   COMMENT ON COLUMN "APP"."FORNECEDORES"."FOR_ESTADO" IS 'Estado do endereço do fornecedor';
   COMMENT ON COLUMN "APP"."FORNECEDORES"."FOR_CEP" IS 'CEP do endereço do fornecedor';

--------------------------------------------------------
--  DDL for Index FOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."FOR_PK" ON "APP"."FORNECEDORES" ("FOR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

--------------------------------------------------------
--  Constraints for Table FORNECEDORES
--------------------------------------------------------

  ALTER TABLE "APP"."FORNECEDORES" ADD CONSTRAINT "FOR_PK" PRIMARY KEY ("FOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "APP"."FORNECEDORES" MODIFY ("FOR_NOME" NOT NULL ENABLE);
  ALTER TABLE "APP"."FORNECEDORES" MODIFY ("FOR_CNPJ_CPF" NOT NULL ENABLE);
  ALTER TABLE "APP"."FORNECEDORES" MODIFY ("FOR_LOGRADOURO" NOT NULL ENABLE);
  ALTER TABLE "APP"."FORNECEDORES" MODIFY ("FOR_NUMERO" NOT NULL ENABLE);
  ALTER TABLE "APP"."FORNECEDORES" MODIFY ("FOR_CIDADE" NOT NULL ENABLE);
  ALTER TABLE "APP"."FORNECEDORES" MODIFY ("FOR_ESTADO" NOT NULL ENABLE);
  ALTER TABLE "APP"."FORNECEDORES" MODIFY ("FOR_CEP" NOT NULL ENABLE);

--------------------------------------------------------
--  DDL for Sequence SEQ_FOR
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."SEQ_FOR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

--------------------------------------------------------
--  DDL for Trigger SEQ_FOR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "APP"."SEQ_FOR" 
    BEFORE INSERT ON APP.FORNECEDORES 
    FOR EACH ROW 
BEGIN
:NEW.FOR_ID := APP.SEQ_FOR.NEXTVAL;
END; 
/
ALTER TRIGGER "APP"."SEQ_FOR" ENABLE;

--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE "APP"."CLIENTES" 
   (	"CLI_ID" NUMBER(6) NOT NULL, 
	"CLI_NOME" VARCHAR2(100 BYTE), 
	"CLI_DTNASC" DATE, 
	"CLI_CPF" VARCHAR2(11 BYTE), 
	"CLI_EMAIL" VARCHAR2(50 BYTE), 
	"CLI_LOGRADOURO" VARCHAR2(100 BYTE), 
	"CLI_NUMERO" VARCHAR2(10 BYTE), 
	"CLI_COMPLEMENTO" VARCHAR2(50 BYTE), 
	"CLI_BAIRRO" VARCHAR2(50 BYTE), 
	"CLI_CIDADE" VARCHAR2(50 BYTE), 
	"CLI_ESTADO" VARCHAR2(2 BYTE), 
	"CLI_CEP" VARCHAR2(8 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_ID" IS 'Chave primaria de identificação da tabela clientes';
   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_NOME" IS 'Nome do cliente';
   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_DTNASC" IS 'Data de nascimento do cliente';
   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_CPF" IS 'CPF do cliente';
   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_EMAIL" IS 'E-mail do cliente';
   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_LOGRADOURO" IS 'Logradouro do endereço do cliente';
   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_NUMERO" IS 'Número do endereço do cliente';
   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_COMPLEMENTO" IS 'Complemento do endereço do cliente';
   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_BAIRRO" IS 'Bairro do endereço do cliente';
   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_CIDADE" IS 'Cidade do endereço do cliente';
   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_ESTADO" IS 'Estado do endereço do cliente';
   COMMENT ON COLUMN "APP"."CLIENTES"."CLI_CEP" IS 'CEP do endereço do cliente';

--------------------------------------------------------
--  DDL for Index CLI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."CLI_PK" ON "APP"."CLIENTES" ("CLI_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "APP"."CLIENTES" ADD CONSTRAINT "CLI_PK" PRIMARY KEY ("CLI_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "APP"."CLIENTES" MODIFY ("CLI_NOME" NOT NULL ENABLE);
  ALTER TABLE "APP"."CLIENTES" MODIFY ("CLI_CPF" NOT NULL ENABLE);
  ALTER TABLE "APP"."CLIENTES" MODIFY ("CLI_LOGRADOURO" NOT NULL ENABLE);
  ALTER TABLE "APP"."CLIENTES" MODIFY ("CLI_NUMERO" NOT NULL ENABLE);
  ALTER TABLE "APP"."CLIENTES" MODIFY ("CLI_CIDADE" NOT NULL ENABLE);
  ALTER TABLE "APP"."CLIENTES" MODIFY ("CLI_ESTADO" NOT NULL ENABLE);
  ALTER TABLE "APP"."CLIENTES" MODIFY ("CLI_CEP" NOT NULL ENABLE);

--------------------------------------------------------
--  DDL for Sequence SEQ_CLI
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."SEQ_CLI"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

--------------------------------------------------------
--  DDL for Trigger SEQ_CLI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "APP"."SEQ_CLI" 
    BEFORE INSERT ON APP.CLIENTES 
    FOR EACH ROW 
BEGIN
:NEW.CLI_ID := APP.SEQ_CLI.NEXTVAL;
END; 
/
ALTER TRIGGER "APP"."SEQ_CLI" ENABLE;

--------------------------------------------------------
--  DDL for Table COMPRAS
--------------------------------------------------------

  CREATE TABLE "APP"."COMPRAS" 
   (	"COM_DATA" DATE, 
	"COM_VALOR" NUMBER(8,2), 
	"COM_F_PAGTO" VARCHAR2(10 BYTE), 
	"COM_ID" NUMBER(6) NOT NULL, 
	"COM_USU_ID" NUMBER(6) NOT NULL, 
	"COM_FOR_ID" NUMBER(6) NOT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "APP"."COMPRAS"."COM_DATA" IS 'Data em que a compra foi efetuada';
   COMMENT ON COLUMN "APP"."COMPRAS"."COM_VALOR" IS 'Valor da compra ';
   COMMENT ON COLUMN "APP"."COMPRAS"."COM_F_PAGTO" IS 'Forma de pagamento da compra';
   COMMENT ON COLUMN "APP"."COMPRAS"."COM_ID" IS 'Chave primária de identificação da tabela compras';
   COMMENT ON COLUMN "APP"."COMPRAS"."COM_USU_ID" IS 'Chave estrangeira de identificação da tabela usuários';
   COMMENT ON COLUMN "APP"."COMPRAS"."COM_FOR_ID" IS 'Chave estrangeira de identificação da tabela fornecedores';

--------------------------------------------------------
--  DDL for Index COM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."COM_PK" ON "APP"."COMPRAS" ("COM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

--------------------------------------------------------
--  Constraints for Table COMPRAS
--------------------------------------------------------

  ALTER TABLE "APP"."COMPRAS" ADD CONSTRAINT "COM_PK" PRIMARY KEY ("COM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "APP"."COMPRAS" MODIFY ("COM_DATA" NOT NULL ENABLE);
  ALTER TABLE "APP"."COMPRAS" MODIFY ("COM_VALOR" NOT NULL ENABLE);
  ALTER TABLE "APP"."COMPRAS" MODIFY ("COM_F_PAGTO" NOT NULL ENABLE);

--------------------------------------------------------
--  Ref Constraints for Table COMPRAS
--------------------------------------------------------

  ALTER TABLE "APP"."COMPRAS" ADD CONSTRAINT "COM_FOR_FK" FOREIGN KEY ("COM_FOR_ID")
	  REFERENCES "APP"."FORNECEDORES" ("FOR_ID") ENABLE;
  ALTER TABLE "APP"."COMPRAS" ADD CONSTRAINT "COM_USU_FK" FOREIGN KEY ("COM_USU_ID")
	  REFERENCES "APP"."USUARIOS" ("USU_ID") ENABLE;

--------------------------------------------------------
--  DDL for Sequence SEQ_COM
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."SEQ_COM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

--------------------------------------------------------
--  DDL for Trigger SEQ_COM
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "APP"."SEQ_COM" 
    BEFORE INSERT ON APP.COMPRAS 
    FOR EACH ROW 
BEGIN
:NEW.COM_ID := APP.SEQ_COM.NEXTVAL;
END; 
/
ALTER TRIGGER "APP"."SEQ_COM" ENABLE;

--------------------------------------------------------
--  DDL for Table ITEM_DE_COMPRA
--------------------------------------------------------

  CREATE TABLE "APP"."ITEM_DE_COMPRA" 
   (	"ITC_PRO_ID" NUMBER(6) NOT NULL, 
	"ITC_COM_ID" NUMBER(6) NOT NULL, 
	"ITC_QTD" NUMBER(6) NOT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "APP"."ITEM_DE_COMPRA"."ITC_PRO_ID" IS 'Chave estrangeira de identificação da tabela produtos';
   COMMENT ON COLUMN "APP"."ITEM_DE_COMPRA"."ITC_COM_ID" IS 'Chave estrangeira de identificação da tabela compra';
   COMMENT ON COLUMN "APP"."ITEM_DE_COMPRA"."ITC_QTD" IS 'Quantidade de itens de compra';

--------------------------------------------------------
--  DDL for Index ITC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."ITC_PK" ON "APP"."ITEM_DE_COMPRA" ("ITC_PRO_ID", "ITC_COM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

--------------------------------------------------------
--  Constraints for Table ITEM_DE_COMPRA
--------------------------------------------------------

  ALTER TABLE "APP"."ITEM_DE_COMPRA" ADD CONSTRAINT "ITC_PK" PRIMARY KEY ("ITC_PRO_ID", "ITC_COM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table ITEM_DE_COMPRA
--------------------------------------------------------

  ALTER TABLE "APP"."ITEM_DE_COMPRA" ADD CONSTRAINT "ITC_COM_FK" FOREIGN KEY ("ITC_COM_ID")
	  REFERENCES "APP"."COMPRAS" ("COM_ID") ENABLE;
  ALTER TABLE "APP"."ITEM_DE_COMPRA" ADD CONSTRAINT "ITC_PRO_FK" FOREIGN KEY ("ITC_PRO_ID")
	  REFERENCES "APP"."PRODUTOS" ("PRO_ID") ENABLE;

--------------------------------------------------------
--  DDL for Table VENDAS
--------------------------------------------------------

  CREATE TABLE "APP"."VENDAS" 
   (	"VEN_DATA" DATE, 
	"VEN_VALOR" NUMBER(8,2), 
	"VEN_F_PAGTO" VARCHAR2(10 BYTE), 
	"VEN_ID" NUMBER(6) NOT NULL, 
	"VEN_CLI_ID" NUMBER(6) NOT NULL, 
	"VEN_USU_ID" NUMBER(6) NOT NULL, 
	"VEN_LOGRADOURO" VARCHAR2(100 BYTE), 
	"VEN_NUMERO" VARCHAR2(10 BYTE), 
	"VEN_COMPLEMENTO" VARCHAR2(50 BYTE), 
	"VEN_BAIRRO" VARCHAR2(50 BYTE), 
	"VEN_CIDADE" VARCHAR2(50 BYTE), 
	"VEN_ESTADO" VARCHAR2(2 BYTE), 
	"VEN_CEP" VARCHAR2(8 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "APP"."VENDAS"."VEN_DATA" IS 'Data em que a venda foi efetuada';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_VALOR" IS 'Valor da Venda';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_F_PAGTO" IS 'Forma de pagamento em que a venda foi efetuada';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_ID" IS 'Chave primária de identificação da tabela vendas';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_CLI_ID" IS 'Chave estrangeira de identificação da tabela clientes';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_USU_ID" IS 'Chave estrangeira de identificação da tabela usuarios';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_LOGRADOURO" IS 'Logradouro do endereço da venda';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_NUMERO" IS 'Número do endereço da venda';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_COMPLEMENTO" IS 'Complemento do endereço da venda';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_BAIRRO" IS 'Bairro do endereço da venda';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_CIDADE" IS 'Cidade do endereço da venda';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_ESTADO" IS 'Estado do endereço da venda';
   COMMENT ON COLUMN "APP"."VENDAS"."VEN_CEP" IS 'CEP do endereço da venda';

--------------------------------------------------------
--  DDL for Index VEN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."VEN_PK" ON "APP"."VENDAS" ("VEN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

--------------------------------------------------------
--  Constraints for Table VENDAS
--------------------------------------------------------

  ALTER TABLE "APP"."VENDAS" ADD CONSTRAINT "VEN_PK" PRIMARY KEY ("VEN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "APP"."VENDAS" MODIFY ("VEN_DATA" NOT NULL ENABLE);
  ALTER TABLE "APP"."VENDAS" MODIFY ("VEN_VALOR" NOT NULL ENABLE);
  ALTER TABLE "APP"."VENDAS" MODIFY ("VEN_F_PAGTO" NOT NULL ENABLE);

--------------------------------------------------------
--  Ref Constraints for Table VENDAS
--------------------------------------------------------

  ALTER TABLE "APP"."VENDAS" ADD CONSTRAINT "VEN_CLI_FK" FOREIGN KEY ("VEN_CLI_ID")
	  REFERENCES "APP"."CLIENTES" ("CLI_ID") ENABLE;
  ALTER TABLE "APP"."VENDAS" ADD CONSTRAINT "VEN_USU_FK" FOREIGN KEY ("VEN_USU_ID")
	  REFERENCES "APP"."USUARIOS" ("USU_ID") ENABLE;

--------------------------------------------------------
--  DDL for Sequence SEQ_VEN
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."SEQ_VEN"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;

--------------------------------------------------------
--  DDL for Trigger SEQ_VEN
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "APP"."SEQ_VEN" 
    BEFORE INSERT ON APP.VENDAS 
    FOR EACH ROW 
BEGIN
:NEW.VEN_ID := APP.SEQ_VEN.NEXTVAL;
END; 
/
ALTER TRIGGER "APP"."SEQ_VEN" ENABLE;

--------------------------------------------------------
--  DDL for Table ITEM_DE_VENDA
--------------------------------------------------------

  CREATE TABLE "APP"."ITEM_DE_VENDA" 
   (	"ITV_VEN_ID" NUMBER(6) NOT NULL, 
	"ITV_PRO_ID" NUMBER(6) NOT NULL, 
	"ITV_QTD" NUMBER(6) NOT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "APP"."ITEM_DE_VENDA"."ITV_VEN_ID" IS 'Chave estrangeira de identificação da tabela venda';
   COMMENT ON COLUMN "APP"."ITEM_DE_VENDA"."ITV_PRO_ID" IS 'Chave estrangeira de identificação da tabela produtos';
   COMMENT ON COLUMN "APP"."ITEM_DE_VENDA"."ITV_QTD" IS 'Quantidade de itens de venda';

--------------------------------------------------------
--  DDL for Index ITV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."ITV_PK" ON "APP"."ITEM_DE_VENDA" ("ITV_VEN_ID", "ITV_PRO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

--------------------------------------------------------
--  Constraints for Table ITEM_DE_VENDA
--------------------------------------------------------

  ALTER TABLE "APP"."ITEM_DE_VENDA" ADD CONSTRAINT "ITV_PK" PRIMARY KEY ("ITV_VEN_ID", "ITV_PRO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table ITEM_DE_VENDA
--------------------------------------------------------

  ALTER TABLE "APP"."ITEM_DE_VENDA" ADD CONSTRAINT "ITV_PRO_FK" FOREIGN KEY ("ITV_PRO_ID")
	  REFERENCES "APP"."PRODUTOS" ("PRO_ID") ENABLE;
  ALTER TABLE "APP"."ITEM_DE_VENDA" ADD CONSTRAINT "ITV_VEN_FK" FOREIGN KEY ("ITV_VEN_ID")
	  REFERENCES "APP"."VENDAS" ("VEN_ID") ENABLE;

