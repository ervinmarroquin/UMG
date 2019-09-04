CREATE TABLE  "EMPRESA" 
   (	"ID_EMPRESA" NUMBER(10,0) NOT NULL ENABLE, 
	"EMPRESA" VARCHAR2(25) NOT NULL ENABLE, 
	 CONSTRAINT "EMPRESA_PK" PRIMARY KEY ("ID_EMPRESA")
  USING INDEX  ENABLE
   )
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_EMPRESA" 
  before insert on "EMPRESA"               
  for each row  
begin   
  if :NEW."ID_EMPRESA" is null then 
    select "EMPRESA_SEQ".nextval into :NEW."ID_EMPRESA" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_EMPRESA" ENABLE
/