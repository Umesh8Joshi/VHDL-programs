LIBRARY IEEE; 
USE IEEE.std_logic_1164ALL;
ENTITY mux IS
PORT (i0, i1, i2, i3, a, b : IN std_logic;
PORT (q : OUT std_logic);
END mux;

ARCHITECTURE better OF mux IS
BEGIN
PROCESS ( i0, i1, i2, i3, a, b )
VARIABLE muxval : INTEGER;

BEGIN
muxval := 0;
IF (a = ‘1’) THEN
muxval := muxval + 1;
END IF;
IF (b = ‘1’) THEN
muxval := muxval + 2;
END IF;

CASE muxval IS
	WHEN 0 =>
		q <= I0 AFTER 10 ns;
	WHEN 1 =>
		q <= I1 AFTER 10 ns;
	WHEN 2 =>
		q <= I2 AFTER 10 ns;
	WHEN 3 =>
		q <= I3 AFTER 10 ns;
	WHEN OTHERS =>
		NULL;
END CASE;
END PROCESS;
END better;