LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY dppsn_match_action_table_testbench IS 
END dppsn_match_action_table_testbench; 

ARCHITECTURE arch_dppsn_match_action_table_testbench OF dppsn_match_action_table_testbench IS 
COMPONENT dppsn_match_action_table IS  
PORT (
    csr_address       : IN  STD_LOGIC_VECTOR(15 DOWNTO 0)  := (OTHERS => '0'); --       csr.address
		csr_read          : IN  STD_LOGIC                      := '0';             --          .read
		csr_readdata      : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);                     --          .readdata
		csr_write         : IN  STD_LOGIC                      := '0';             --          .write
		csr_writedata     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0)  := (OTHERS => '0'); --          .writedata
		csr_waitrequest   : OUT STD_LOGIC;                                         --          .waitrequest
		csr_clk_clk       : IN  STD_LOGIC                      := '0';             --   csr_clk.clk
		csr_reset_reset_n : IN  STD_LOGIC                      := '0';             -- csr_reset.reset_n
		reset_reset_n     : IN  STD_LOGIC                      := '0';             --     reset.reset_n
		clk_clk           : IN  STD_LOGIC                      := '0';             --       clk.clk
		in_data           : IN  STD_LOGIC_VECTOR(63 DOWNTO 0)  := (OTHERS => '0'); --        in.data
		in_ready          : OUT STD_LOGIC;                                         --          .ready
		in_valid          : IN  STD_LOGIC                      := '0';             --          .valid
		in_startofpacket  : IN  STD_LOGIC                      := '0';             --          .startofpacket
		in_endofpacket    : IN  STD_LOGIC                      := '0';             --          .endofpacket
		in_empty          : IN  STD_LOGIC_VECTOR(2 DOWNTO 0)   := (OTHERS => '0'); --          .empty
		in_channel        : IN  STD_LOGIC_VECTOR(127 DOWNTO 0) := (OTHERS => '0'); --          .channel
		out_data          : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);                     --      out0.data
		out_empty         : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);                      --          .empty
		out_endofpacket   : OUT STD_LOGIC;                                         --          .endofpacket
		out_ready         : IN  STD_LOGIC                      := '0';             --          .ready
		out_startofpacket : OUT STD_LOGIC;                                         --          .startofpacket
		out_valid         : OUT STD_LOGIC;                                         --          .valid
		out_channel       : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)                     --          .channel
	);
	END COMPONENT;
	
	SIGNAL s_csr_address       :  STD_LOGIC_VECTOR(15 DOWNTO 0)  := (OTHERS => '0'); --       csr.address
	SIGNAL s_csr_read          :  STD_LOGIC                      := '0';             --          .read
	SIGNAL	s_csr_readdata      :  STD_LOGIC_VECTOR(31 DOWNTO 0);                     --          .readdata
	SIGNAL	s_csr_write         :  STD_LOGIC                      := '0';             --          .write
	SIGNAL	s_csr_writedata     :  STD_LOGIC_VECTOR(31 DOWNTO 0)  := (OTHERS => '0'); --          .writedata
	SIGNAL	s_csr_waitrequest   :  STD_LOGIC;                                         --          .waitrequest
	SIGNAL	s_csr_clk_clk       :  STD_LOGIC                      := '0';             --   csr_clk.clk
	SIGNAL	s_csr_reset_reset_n :  STD_LOGIC                      := '0';             -- csr_reset.reset_n
	SIGNAL	s_reset_reset_n     :  STD_LOGIC                      := '0';             --     reset.reset_n
	SIGNAL	s_clk_clk           :  STD_LOGIC                      := '0';             --       clk.clk
	SIGNAL	s_in_data           :  STD_LOGIC_VECTOR(63 DOWNTO 0)  := (OTHERS => '0'); --        in.data
	SIGNAL	s_in_ready          :  STD_LOGIC;                                         --          .ready
	SIGNAL	s_in_valid          :  STD_LOGIC                      := '0';             --          .valid
	SIGNAL	s_in_startofpacket  :  STD_LOGIC                      := '0';             --          .startofpacket
	SIGNAL	s_in_endofpacket    :  STD_LOGIC                      := '0';             --          .endofpacket
	SIGNAL	s_in_empty          :  STD_LOGIC_VECTOR(2 DOWNTO 0)   := (OTHERS => '0'); --          .empty
	SIGNAL	s_in_channel        :  STD_LOGIC_VECTOR(127 DOWNTO 0) := (OTHERS => '0'); --          .channel
	SIGNAL	s_out_data          :  STD_LOGIC_VECTOR(63 DOWNTO 0);                     --      out0.data
	SIGNAL	s_out_empty         :  STD_LOGIC_VECTOR(2 DOWNTO 0);                      --          .empty
	SIGNAL	s_out_endofpacket   :  STD_LOGIC;                                         --          .endofpacket
	SIGNAL	s_out_ready         :  STD_LOGIC                      := '0';             --          .ready
	SIGNAL	s_out_startofpacket :  STD_LOGIC;                                         --          .startofpacket
	SIGNAL	s_out_valid         :  STD_LOGIC;                                         --          .valid
	SIGNAL	s_out_channel       :  STD_LOGIC_VECTOR(127 DOWNTO 0) := (OTHERS => '0') ;                     --          .channel
	constant clk_period : time := 6.4 ns;

BEGIN

uut: dppsn_match_action_table
PORT MAP ( 
    csr_address => s_csr_address,      
		csr_read => s_csr_read,          
		csr_readdata => s_csr_readdata,      
		csr_write => s_csr_write,        
		csr_writedata => s_csr_writedata,     
		csr_waitrequest => s_csr_waitrequest,   
		csr_clk_clk => s_csr_clk_clk,  
		csr_reset_reset_n => s_csr_reset_reset_n, 
		reset_reset_n => s_reset_reset_n,
		clk_clk => s_clk_clk,        
		in_data => s_in_data,       
		in_ready => s_in_ready,   
		in_valid => s_in_valid,          
		in_startofpacket => s_in_startofpacket,  
		in_endofpacket => s_in_endofpacket,    
		in_empty => s_in_empty,          
		in_channel => s_in_channel,        
		out_data => s_out_data,         
		out_empty => s_out_empty,        
		out_endofpacket => s_out_endofpacket,  
		out_ready => s_out_ready,        
		out_startofpacket => s_out_startofpacket,
		out_valid => s_out_valid,         
		out_channel => s_out_channel  
		);
clk_proces: PROCESS
begin
        
        s_clk_clk <= '0';
        wait for 3.2 ns;  --for 0.5 ns signal is '0'.
        s_clk_clk <= '1';
        wait for 3.2 ns;  --for next 0.5 ns signal is '1'.
END PROCESS; 

csr_clk_proces: PROCESS
begin
        
        s_csr_clk_clk <= '0';
        wait for 3.2 ns;  --for 0.5 ns signal is '0'.
        s_csr_clk_clk <= '1';
        wait for 3.2 ns;  --for next 0.5 ns signal is '1'.
END PROCESS; 

stim: PROCESS 
BEGIN 
  s_csr_reset_reset_n <= '1';
  s_reset_reset_n <= '1';
  s_csr_write <= '1';
  s_csr_read <= '1';
  --s_csr_writedata  <= "11111111111111111111111111110001";
  s_out_ready <= '1';
  wait for clk_period;
  while s_csr_write = '1' loop
    wait for clk_period;
    if (s_in_valid = '1') then
      s_out_ready <= '0' ;wait for clk_period;
      wait until (s_in_endofpacket = '1');
      wait for 20ns;
      s_out_ready <= '1';
    end if;
  end loop;

WAIT;
END PROCESS;

stim1: PROCESS
BEGIN
  s_in_channel <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
  s_csr_writedata  <= "11111111111111111111111111110001";
  s_csr_address <= "0000001111000000";wait for clk_period;
  s_csr_address <= "0000001111000100";wait for clk_period;
  s_csr_address <= "0000001111001000";wait for clk_period;
  s_csr_address <= "0000001111001100";wait for clk_period;
  s_csr_address <= "0000001111010000";wait for clk_period;
  s_csr_address <= "0000001111010100";wait for clk_period;
  s_csr_address <= "0000001111011000";wait for clk_period;
  s_csr_address <= "0000001111011100";wait for clk_period;
  s_csr_address <= "0000001111100000";wait for clk_period;
  if (s_out_ready /= '1') then
    wait until s_out_ready = '1';
  end if;
  s_csr_address <= "1111111111000000";
  s_in_startofpacket <='1';
  s_in_valid <= '1';
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_startofpacket <='0';
  s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in_data <= "0000000000000000000001111111111111111111111111111111111111111111"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; 
  s_in_endofpacket <= '1'; wait for clk_period;
  s_in_endofpacket <= '0';
  s_in_valid <= '0'; wait for clk_period;
  
  s_in_channel <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
  s_csr_writedata  <= "11111111111111111111111111111000";
  s_csr_address <= "0000001111000000";wait for clk_period;
  s_csr_address <= "0000001111000100";wait for clk_period;
  s_csr_address <= "0000001111001000";wait for clk_period;
  s_csr_address <= "0000001111001100";wait for clk_period;
  s_csr_address <= "0000001111010000";wait for clk_period;
  s_csr_address <= "0000001111010100";wait for clk_period;
  s_csr_address <= "0000001111011000";wait for clk_period;
  s_csr_address <= "0000001111011100";wait for clk_period;
  s_csr_address <= "0000001111100000";wait for clk_period;
  if (s_out_ready /= '1') then
    wait until s_out_ready = '1';
  end if;
  s_csr_address <= "0000000000000000";
  s_in_startofpacket <='1';
  s_in_valid <= '1';
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_startofpacket <='0';
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; 
  s_in_endofpacket <= '1'; wait for clk_period;
  s_in_endofpacket <= '0';
  s_in_valid <= '0'; wait for clk_period;
  
  s_in_channel <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
  s_csr_writedata  <= "11111111111111111111111111111111";
  s_csr_address <= "0000001111000000";wait for clk_period;
  s_csr_address <= "0000001111000100";wait for clk_period;
  s_csr_address <= "0000001111001000";wait for clk_period;
  s_csr_address <= "0000001111001100";wait for clk_period;
  s_csr_address <= "0000001111010000";wait for clk_period;
  s_csr_address <= "0000001111010100";wait for clk_period;
  s_csr_address <= "0000001111011000";wait for clk_period;
  s_csr_address <= "0000001111011100";wait for clk_period;
  s_csr_address <= "0000001111100000";wait for clk_period;
  if (s_out_ready /= '1') then
    wait until s_out_ready = '1';
  end if;
  s_csr_address <= "0000000000000000";
  s_in_startofpacket <='1';
  s_in_valid <= '1';
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_startofpacket <='0';
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; 
  s_in_endofpacket <= '1'; wait for clk_period;
  s_in_endofpacket <= '0';
  s_in_valid <= '0'; wait for clk_period;
  
  s_in_channel <= "11111111111111110000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
  s_csr_writedata  <= "11111111111111110000000000000000";
  s_csr_address <= "0000001111000000";wait for clk_period;
  s_csr_address <= "0000001111000100";wait for clk_period;
  s_csr_address <= "0000001111001000";wait for clk_period;
  s_csr_address <= "0000001111001100";wait for clk_period;
  s_csr_address <= "0000001111010000";wait for clk_period;
  s_csr_address <= "0000001111010100";wait for clk_period;
  s_csr_address <= "0000001111011000";wait for clk_period;
  s_csr_address <= "0000001111011100";wait for clk_period;
  s_csr_address <= "0000001111100000";wait for clk_period;
  
  if (s_out_ready /= '1') then
    wait until s_out_ready = '1';
  end if;
  s_csr_address <= "0000000000000000";
  s_in_startofpacket <='1';
  s_in_valid <= '1';
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_startofpacket <='0';
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in_data <= "0000000000000000000000000000000000000000000000000000000000000000"; 
  s_in_endofpacket <= '1'; wait for clk_period;
  s_in_endofpacket <= '0';
  s_in_valid <= '0'; wait for clk_period;
  
  WAIT;
END PROCESS;

verif: PROCESS 
BEGIN 
  
  --provjeravamo da li se paket proslijedjuje na treci red cekanja
  WAIT FOR  10* clk_period;
  ASSERT ( s_out_channel(0) = '1' AND s_out_channel(1) = '0' AND s_out_channel(2) = '0' AND s_out_channel(3) = '0')
  REPORT "GRESKA 1" SEVERITY error;
  
  --provjeravamo da li se paket proslijedjije na nulti red cekanja
  WAIT FOR 18* clk_period;
  ASSERT ( s_out_channel(0) = '0' AND s_out_channel(1) = '0' AND s_out_channel(2) = '0' AND s_out_channel(3) = '1')
  REPORT "GRESKA 2" SEVERITY error;
  
  --provjeravamo da li se paket salje na sve izlazne redove cekanja
  WAIT FOR 18* clk_period;
  ASSERT ( s_out_channel(0) = '1' AND s_out_channel(1) = '1' AND s_out_channel(2) = '1' AND s_out_channel(3) = '1')
  REPORT "GRESKA 3" SEVERITY error;
wait for 10 ns; 
WAIT; 
END PROCESS;

END arch_dppsn_match_action_table_testbench;    