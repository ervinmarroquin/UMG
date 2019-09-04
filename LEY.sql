CREATE TABLE  "LEY" 
   (	"ID_LEY" NUMBER(10,0) NOT NULL ENABLE, 
	"LEY" VARCHAR2(100) NOT NULL ENABLE, 
	 CONSTRAINT "LEY_PK" PRIMARY KEY ("ID_LEY")
  USING INDEX  ENABLE
   )
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_LEY" 
  before insert on "LEY"               
  for each row  
begin   
  if :NEW."ID_LEY" is null then 
    select "LEY_SEQ".nextval into :NEW."ID_LEY" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_LEY" ENABLE
/