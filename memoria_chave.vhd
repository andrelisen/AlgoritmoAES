-- Memória da chave de criptografia inicial 
-- É uma LUT como o exemplo do prof. Fábio
-- A memória é inicializada com a chave de criptografia inicial e depois os cálculos são feitos e guardados em registradores

	library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;
	use ieee.std_logic_arith.all;

entity memoria_chave is 
	port(
		state_index		: in 		std_logic_vector(5 downto 0);
		e0_c				: out 	std_logic_vector(7 downto 0);
		e1_c				: out 	std_logic_vector(7 downto 0)
	);
end entity;

architecture hardwareMemoriaChave of memoria_chave is
	type tamanho is array (integer range 0 to 15) of std_logic_vector(7 downto 0); --define tamanho da memoria de 16 posições de 8 bits cada
	signal lut_chave		: tamanho; 
	--signal state_index_sg	: std_logic_vector(5 downto 0);
begin
	--declaração da LUT da chave inicial de criptografia exemplo: lut_rlps_0 (0) 	<= 9D"128"; 
		lut_chave(0) <= X"2b";
		lut_chave(1) <= X"7e";
		lut_chave(2) <= X"15";
		lut_chave(3) <= X"16";
		lut_chave(4) <= X"28";
		lut_chave(5) <= X"ae";
		lut_chave(6) <= X"d2";
		lut_chave(7) <= X"a6";
		lut_chave(8) <= X"ab";
		lut_chave(9) <= X"f7";
		lut_chave(10) <= X"15";
		lut_chave(11) <= X"88";
		lut_chave(12) <= X"09";
		lut_chave(13) <= X"cf";
		lut_chave(14) <= X"4f";
		lut_chave(15) <= X"3c";
		
	--colocando os valores na saida

	e0_c <= lut_chave(conv_integer(state_index));
	e1_c <= lut_chave(conv_integer(state_index));
	
	
end hardwareMemoriaChave;