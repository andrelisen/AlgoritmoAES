-- Criação do Add Round Key

library ieee;
use ieee.std_logic_1164.all;

entity AddRound is
	port(
		a	:	in std_logic_vector(7 downto 0);
		b	:	in std_logic_vector(7 downto 0);
		resultado : out std_logic_vector(7 downto 0)
	);
end entity;

architecture hardwareAddRound of AddRound is
begin
	resultado <= a xor b;
end hardwareAddRound;