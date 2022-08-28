SELECT SYSDATE FROM dual

-- Para colocar o resultado na tela
SET SERVEROUTPUT ON -- Nâo precisou..
DECLARE vTexto varchar(100) := 'Alguma mensagem de teste';
BEGIN	
	DBMS_OUTPUT.PUT_LINE(vTexto);
EXCEPTION
	WHEN OTHERS
	THEN
		DBMS_OUTPUT.PUT_LINE('Erro oracle ' || sqlcode || sqlerrm);
END;