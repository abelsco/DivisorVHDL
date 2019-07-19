LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CODE6B IS
	GENERIC(n: INTEGER := 8);
	PORT(
		clk_in: IN BIT;
		clk_out: OUT BIT
	);
END CODE6B;

ARCHITECTURE Codigo OF CODE6B IS
BEGIN
	PROCESS(clk_in)
		VARIABLE contador: INTEGER RANGE 0 TO n := 0;
		VARIABLE borda: BIT := '0' ;
	 BEGIN
		--	clk_out <= '0';
		--	borda := '0';
		IF(clk_in'EVENT AND clk_in = '1') THEN
			contador := contador + 1;				
			CASE contador IS
				WHEN n =>
					contador := 0;				
					clk_out <= NOT(borda);
					borda := NOT(borda);
				WHEN OTHERS => NULL;							
			END CASE;
		END IF;		
	END PROCESS;
END;
		