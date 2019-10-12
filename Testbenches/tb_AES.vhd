    library IEEE;
		use IEEE.std_logic_1164.all;

entity tb_AES is
end entity;

architecture testBench_AES of tb_AES is

component AES_topo is
	port(
		--Portas de entrada
			e0, e1 : in std_logic_vector(7 downto 0);
		--Clock
			clock 												  : in std_logic;
		--Enable dos registradores: aqui cria um enable para cada "conj" que preciso setar em reg diferentes
			En_inputs  											  : in std_logic;
			En_regAddRound: in std_logic;
		--Portas de depuração
			outAddRound_view, outReg0_view, outReg1_view, outRegAdd_view	  : out std_logic_vector(7 downto 0)
	);
end component;

signal e0_sg : std_logic_vector(7 downto 0);  
signal e1_sg : std_logic_vector(7 downto 0);  
signal outAddRound_sg : std_logic_vector(7 downto 0);  
signal outReg0_sg : std_logic_vector(7 downto 0);  
signal outReg1_sg : std_logic_vector(7 downto 0);  
signal outRegAdd_sg : std_logic_vector(7 downto 0);  
signal clock_sg : std_logic := '0';  
signal En_inputs_sg : std_logic := '0';  
signal En_regAddRound_sg : std_logic := '0';  


begin
inst_top : AES_topo 
  port map(
    e0 => e0_sg,
    e1 => e1_sg,
    clock => clock_sg,
    En_inputs => En_inputs_sg,
    En_regAddRound => En_regAddRound_sg,
    outAddRound_view => outAddRound_sg,
    outReg0_view => outReg0_sg,
    outReg1_view =>outReg1_sg,
    outRegAdd_view =>outRegAdd_sg
  );

  clock_sg <= not clock_sg after 20 ns;
  		 process 
  		  begin
  		   wait for 10 ns;
   		  e0_sg <= x"32";
   		  e1_sg <= x"2b";
   		  wait for 30 ns;
   		  En_inputs_sg <= '1';
   		  wait for 60 ns;
   		  En_regAddRound_sg <='1';
   		  wait;
  		end process;
end testBench_AES;