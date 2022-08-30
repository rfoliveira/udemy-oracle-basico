SELECT SYSDATE FROM dual

-- Para colocar o resultado na tela
SET SERVEROUTPUT ON -- Nâo precisou..

DECLARE vTexto varchar(100) := 'Alguma mensagem de teste';
BEGIN	
	DBMS_OUTPUT.PUT_LINE(vTexto);
-- bloco exception é opcional
EXCEPTION
	WHEN OTHERS
	THEN
		DBMS_OUTPUT.PUT_LINE('Erro oracle ' || sqlcode || sqlerrm);
END;

-- bloco anonimo
[DECLARE
  <variaveis...>
]
BEGIN
  <..corpo..>
END

declare 
  vNumero1 number(11,2) := 500;
  vNumero2 number(11,2) := 400;
  vMedia number(11,2);
begin
  vMedia := (vNumero1 + vNumero2) / 2;
  dbms_output.put_line('Média = ' || vMedia);
end;

-- Constantes
declare <nome> constant <tipo> := <valor>

-- variáveis bind
-- são variáveis externas usadas por outras linguagens para determinado bloco
variable <noome> tipo;

variable x number(11,2);
begin
  :x := 1000;
  dbms_output.out_line(to_char(:x));
end;

-- select 
declare 
  x integer;
  y integer;
begin
  select num1, num2 into x, y from tabela;
end;
