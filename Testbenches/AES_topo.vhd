-- Arquivo topo da minha implementação

	library ieee;
	use ieee.std_logic_1164.all;
	
entity AES_topo is
	port(
		--Entrada do texto
			registrador0_texto		:	in std_logic_vector(7 downto 0);
			registrador1_texto		:	in std_logic_vector(7 downto 0);
		--Entrada da chave
			registrador0_chave		:	in std_logic_vector(7 downto 0);
			registrador1_chave		:	in std_logic_vector(7 downto 0);
		--Sinal de enable
			Enable_registradoresA	:	in std_logic;
			Enable_registradoresB	:	in std_logic;
			Enable_add					:  in std_logic;
		--Sinal de clock
			clock							:	in std_logic;
		--Sinais de depuração
			--Quantas caixas eu vou ter? 
			--Registrador 0 da chave
			out_view_Registrador0_chave :	out std_logic_vector(7 downto 0);
			out_view_Registrador1_chave :	out std_logic_vector(7 downto 0);
			--Registrador 0 do texto
			out_view_Registrador0_texto :	out std_logic_vector(7 downto 0);
			out_view_Registrador1_texto :	out std_logic_vector(7 downto 0);
			--	Add Round Key
			out_view_Add  :	out std_logic_vector(7 downto 0);
			out_view_Add1 :	out std_logic_vector(7 downto 0);
			--Registrador 0 Add Round Key
			out_view_Registrador0_Add	: out std_logic_vector(7 downto 0);
			out_view_Registrador1_Add	: out std_logic_vector(7 downto 0)
	);
end entity;

architecture hardwareTopo of AES_topo is

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

--Sinais internos para cada porta de depuração
signal out_Reg0Chave_sg, out_Reg0Texto_sg, out_Add_sg, out_Reg0Add_sg	:	std_logic_vector(7 downto 0);
signal out_Reg1Chave_sg, out_Reg1Texto_sg, out_Add1_sg, out_Reg1Add_sg	:	std_logic_vector(7 downto 0);
begin

--Quero criar as caixas para o sinal de enable A 

--Primeiro quero criar o registrador 0 do texto

	Reg0TXT	:	register8bits
		port map(
			clk		=>	clock,	--porta
			enable 	=> Enable_registradoresA, --porta
			d			=>	registrador0_texto,	--porta
			q			=>	out_Reg0Texto_sg	--sinal
		);
--Agora vou declarar o registrador 0 da chave
	Reg0CHAVE	:	register8bits
		port map(
			clk		=> clock,	--porta
			enable	=> Enable_registradoresA,	--porta
			d			=>	registrador0_chave,	--porta
			q			=> out_Reg0Chave_sg	--sinal
		);
--Agora quero fazer um AddRoundKey entre o Reg0Chave e Reg0Texto
	Add0	: AddRound
		port map(
			a				=> out_Reg0Texto_sg,	--sinal
			b				=>	out_Reg0Chave_sg,	--sinal
			resultado	=> out_Add_sg		--sinal
		);
--Por fim quero ter um registrador especifico para guardar o resultado de add
	Reg0ADD	:	register8bits
		port map(
			clk		=>	clock,	--porta
			enable	=> Enable_add,	--porta
			d			=>	out_Add_sg,	--sinal
			q			=>	out_Reg0Add_sg	--sinal
		);
--Enviando sinais para as portas de depuração
	out_view_Registrador0_chave	<=		out_Reg0Chave_sg;		
	out_view_Registrador0_texto	<=		out_Reg0Texto_sg;
	out_view_Add						<=		out_Add_sg;
	out_view_Registrador0_Add		<=		out_Reg0Add_sg;
	
--------------------------------------------------------------------------------------------------
	
--Quero criar as caixas para o sinal de enable B

--Primeiro quero criar o registrador 0 do texto

	Reg1TXT	:	register8bits
		port map(
			clk		=>	clock,	--porta
			enable 	=> Enable_registradoresB, --porta
			d			=>	registrador1_texto,	--porta
			q			=>	out_Reg1Texto_sg	--sinal
		);
--Agora vou declarar o registrador 0 da chave
	Reg1CHAVE	:	register8bits
		port map(
			clk		=> clock,	--porta
			enable	=> Enable_registradoresB,	--porta
			d			=>	registrador1_chave,	--porta
			q			=> out_Reg1Chave_sg	--sinal
		);
--Agora quero fazer um AddRoundKey entre o Reg0Chave e Reg0Texto
	Add1	: AddRound
		port map(
			a				=> out_Reg1Texto_sg,	--sinal
			b				=>	out_Reg1Chave_sg,	--sinal
			resultado	=> out_Add1_sg		--sinal
		);
--Por fim quero ter um registrador especifico para guardar o resultado de add
	Reg1ADD	:	register8bits
		port map(
			clk		=>	clock,	--porta
			enable	=> Enable_add,	--porta
			d			=>	out_Add1_sg,	--sinal
			q			=>	out_Reg1Add_sg	--sinal
		);
--Enviando sinais para as portas de depuração
	out_view_Registrador1_chave	<=		out_Reg1Chave_sg;		
	out_view_Registrador1_texto	<=		out_Reg1Texto_sg;
	out_view_Add1						<=		out_Add1_sg;
	out_view_Registrador1_Add		<=		out_Reg1Add_sg;
	
	
	
end hardwareTopo;
