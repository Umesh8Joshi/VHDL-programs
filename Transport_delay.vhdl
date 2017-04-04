LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY delay_line IS
PORT ( a : IN std_logic;
PORT ( 
b : OUT std_logic);
END delay_line;
ARCHITECTURE delay_line OF delay_line IS
BEGIN
b <= TRANSPORT a AFTER 20 ns;
END delay_line;