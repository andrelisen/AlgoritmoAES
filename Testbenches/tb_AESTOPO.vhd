library IEEE;
use IEEE.std_logic_1164.all;

entity tb_AESTOPO is
 end entity;
 
 architecture testbench_aes of tb_AESTOPO is
   component AES_topo is
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
end component;
signal registrador0_texto_sg, registrador1_texto_sg, registrador0_chave_sg, registrador1_chave_sg : std_logic_vector(7 downto 0);
signal Enable_registradoresA_sg, Enable_registradoresB_sg, Enable_add_sg : std_logic;
signal clock_sg  : std_logic :='1';
signal out_view_Registrador0_chave_sg, out_view_Registrador1_chave_sg : std_logic_vector(7 downto 0);  
signal out_view_Registrador0_texto_sg, out_view_Registrador1_texto_sg : std_logic_vector(7 downto 0);
signal out_view_Add_sg, out_view_Add1_sg, out_view_Registrador0_Add_sg ,out_view_Registrador1_Add_sg: std_logic_vector(7 downto 0); 
  
 begin
   inst_top : AES_topo
    port map(
     
			registrador0_texto		       => registrador0_texto_sg,
			registrador1_texto	        => registrador1_texto_sg,
	
			registrador0_chave		       => registrador0_chave_sg,
			registrador1_chave		       => registrador1_chave_sg,
		
			Enable_registradoresA	     => Enable_registradoresA_sg,
			Enable_registradoresB	     => Enable_registradoresB_sg,
			Enable_add			              =>	Enable_add_sg,
		
			clock			 			               => clock_sg,
			
			out_view_Registrador0_chave => out_view_Registrador0_chave_sg,
			out_view_Registrador1_chave => out_view_Registrador1_chave_sg,
			
			out_view_Registrador0_texto => out_view_Registrador0_texto_sg,
			out_view_Registrador1_texto => out_view_Registrador1_texto_sg,

			out_view_Add                => out_view_Add_sg,
			out_view_Add1               => out_view_Add1_sg,
			
			out_view_Registrador0_Add   => out_view_Registrador0_Add_sg,
			out_view_Registrador1_Add   => out_view_Registrador1_Add_sg
    );
    
    clock_sg <= not clock_sg after 40 ns;
  		 process 
  		  begin
 	     wait for 40 ns;
   		  registrador0_texto_sg <="10000000"; 
   		  registrador1_texto_sg <="10000001";
   		  Enable_registradoresA_sg <='1';
 		   Enable_registradoresB_sg <='0';
 		   wait for 80 ns;
 		   registrador0_chave_sg <="01000000";
 		   registrador1_chave_sg <="00000010";
 		   Enable_registradoresA_sg <='0';
   		  Enable_registradoresB_sg <='1';
   		  wait for 120 ns;
   		  Enable_add_sg<='1';
   		  Enable_registradoresA_sg <='0';
   		  Enable_registradoresB_sg <='0';
   		  wait;
  		end process;
    
 end testbench_aes;