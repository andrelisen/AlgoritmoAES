-- Arquivo topo da minha implementação

	library ieee;
	use ieee.std_logic_1164.all;
	
--Passo 1: criar a entidade topo com entradas, saídas e portas de depuração
entity AES_topo is
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
end entity;

architecture hardwareTopo of AES_topo is
--Passo 2:Declaração dos sinais de cada porta de depuração 
	signal outAddRound, outReg0, outReg1, outRegAdd : std_logic_vector(7 downto 0);

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

	registradorR0_texto : register8bits
		port map( 								--x vai receber 10, ou seja, x => 10
			clk =>clock,
			enable =>En_inputs,
			d => e0,
			q => outReg0
		);
	registradorR0_chave : register8bits
		port map(
			clk => clock,
			enable => En_inputs,
			d => e1,
			q => outReg1
		);
	Add : AddRound 
		port map( 
			a => outReg0, 
			b => outReg1,
			resultado => outAddRound
		);
	registradorAdd : register8bits
		port map(
			clk => clock,
			enable => En_regAddRound,
			d => outAddRound,
			q => outRegAdd
		);
	--Portas de visualização de cada resultado de cada quadradinho	
	outAddRound_view <= outAddRound;
	outReg0_view 	  <= outReg0;
	outReg1_view	  <= outReg1;
	outRegAdd_view   <= outRegAdd;
		
end hardwareTopo;
