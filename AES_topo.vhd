-- Arquivo topo da minha implementação

	library ieee;
	use ieee.std_logic_1164.all;
	
--Passo 1: criar a entidade topo com entradas, saídas e portas de depuração
entity AES_topo is
	port(
		--Portas de entrada do texto
			e0_t, e1_t, e2_t, e3_t, e4_t, e5_t, e6_t, e7_t, e8_t, e9_t, e10_t 	: in std_logic_vector(7 downto 0);
			e11_t, e12_t, e13_t, e14_t, e15_t							  					: in std_logic_vector(7 downto 0);
		--Portas de entrada da chave
			e0_c, e1_c, e2_c, e3_c, e4_c, e5_c, e6_c, e7_c, e8_c, e9_c  			: in std_logic_vector(7 downto 0);
			e10_c, e11_c, e12_c, e13_c, e14_c, e15_c					  		 			: in std_logic_vector(7 downto 0);
		--Clock
			clock 												   : in std_logic;
		--Enable dos registradores: aqui cria um enable para cada "conj" que preciso setar em reg diferentes
			En_inputs  											   	: in std_logic;
			En_regAddRound											: in std_logic
		--Portas de depuração
	--	outReg0_t_view, outReg0_c_view	  : out std_logic_vector(7 downto 0); --ver o que tem no registrador da chave e do texto
	--	outAddRound0_view					  : out std_logic_vector(7 downto 0);
	--	outRegAdd0_view						  : out std_logic_vector(7 downto 0)
	);
end entity;

architecture hardwareTopo of AES_topo is
--Passo 2:Declaração dos sinais de cada porta de depuração 
--	signal outReg0_t_sg, outReg0_c_sg, outAddRound0_sg, outRegAdd0_sg	: std_logic_vector(7 downto 0);
signal outReg0_t_sg, outReg0_c_sg, outAddRound0_sg, outRegAdd0_sg	: std_logic_vector(127 downto 0);
	--signal e0_c : std_logic_vector(7 downto 0);
--Passo 3:Declaração de cada componente que "quero ver como quadradinho"
	component register8bits is
		port(	
			clk		: in std_logic;
			enable	: in std_logic;
			d	      : in std_logic_vector(7 downto 0);
			q			: out std_logic_vector(7 downto 0)	
		);
	end component;
	component AddRound is
		port(
			a	:	in std_logic_vector(7 downto 0);
			b	:	in std_logic_vector(7 downto 0);
			resultado : out std_logic_vector(7 downto 0)
		);
	end component;
	
--Passo 4: mapear cada componente a sua porta principal correspodente

begin

	R0_texto : register8bits
		port map( 								--x vai receber 10, ou seja, x => 10
			clk =>clock,
			enable =>En_inputs,
			d => e0_t,
			q => outReg0_t_sg
		);
	R0_chave : register8bits
		port map(
			clk => clock,
			enable => En_inputs,
			d => e0_c,
			q => outReg0_c_sg
		);
	Add0 : AddRound 
		port map( 
			a => outReg0_c_sg, 
			b => outReg0_t_sg,
			resultado => outAddRound0_sg
		);
	R0_add : register8bits
		port map(
			clk => clock,
			enable => En_regAddRound,
			d => outAddRound0_sg,
			q => outRegAdd0_sg
		);
	--Portas de visualização de cada resultado de cada quadradinho	
--		outReg0_t_view <= outReg0_t_sg;
--		outReg0_c_view <= outReg0_c_sg;
--		outAddRound0_view	<= outAddRound0_sg;
--		outRegAdd0_view	<= outRegAdd0_sg;
end hardwareTopo;