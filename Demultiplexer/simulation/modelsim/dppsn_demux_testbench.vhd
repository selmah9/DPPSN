LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY dppsn_demux_testbench IS 
END dppsn_demux_testbench; 

ARCHITECTURE arch_dppsn_demux_testbench OF dppsn_demux_testbench IS 
COMPONENT dppsn_demux IS  
PORT (
                csr_address       : IN  STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0'); --       csr.address
		csr_read          : IN  STD_LOGIC                     := '0';             --          .read
		csr_readdata      : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);                    --          .readdata
		csr_write         : IN  STD_LOGIC                     := '0';             --          .write
		csr_writedata     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0'); --          .writedata
		csr_waitrequest   : OUT STD_LOGIC;                                        --          .waitrequest
		csr_clk_clk       : IN  STD_LOGIC                     := '0';             --   csr_clk.clk
		csr_reset_reset_n : IN  STD_LOGIC                     := '0';             -- csr_reset.reset_n
		clk_clk           : IN  STD_LOGIC                     := '0';             --       clk.clk
		reset_reset_n     : IN  STD_LOGIC                     := '0';             --     reset.reset_n
		out0_data          : OUT  STD_LOGIC_VECTOR(63 DOWNTO 0); --       in0.data
		out0_ready         : IN STD_LOGIC                      := '0';                  --          .ready
		out0_valid         : OUT  STD_LOGIC ;             --          .valid
		out0_startofpacket : OUT  STD_LOGIC                     ;             --          .startofpacket
		out0_endofpacket   : OUT  STD_LOGIC                     ;             --          .endofpacket
		out0_empty         : OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)  ; --          .empty
		out1_data          : OUT  STD_LOGIC_VECTOR(63 DOWNTO 0); --       in1.data
		out1_ready         : IN STD_LOGIC                        := '0';                --          .ready
		out1_valid         : OUT  STD_LOGIC                     ;             --          .valid
		out1_startofpacket : OUT  STD_LOGIC                     ;             --          .startofpacket
		out1_endofpacket   : OUT  STD_LOGIC                     ;             --          .endofpacket
		out1_empty         : OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)  ; --          .empty
		out2_data          : OUT  STD_LOGIC_VECTOR(63 DOWNTO 0) ; --       in2.data
		out2_ready         : IN STD_LOGIC                      := '0';                 --          .ready
		out2_valid         : OUT  STD_LOGIC                     ;             --          .valid
		out2_startofpacket : OUT  STD_LOGIC                     ;             --          .startofpacket
		out2_endofpacket   : OUT  STD_LOGIC                     ;             --          .endofpacket
		out2_empty         : OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)  ; --          .empty
		out3_data          : OUT  STD_LOGIC_VECTOR(63 DOWNTO 0) ; --       in3.data
		out3_ready         : IN STD_LOGIC                      := '0';                 --          .ready
		out3_valid         : OUT  STD_LOGIC                     ;             --          .valid
		out3_startofpacket : OUT  STD_LOGIC                     ;             --          .startofpacket
		out3_endofpacket   : OUT  STD_LOGIC                     ;             --          .endofpacket
		out3_empty         : OUT  STD_LOGIC_VECTOR(2 DOWNTO 0) ; --          .empty
		in_data          : IN STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0');                   --       out.data
		in_empty         : IN STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');                    --          .empty
		in_endofpacket   : IN STD_LOGIC := '0';                                       --          .endofpacket
		in_ready         : OUT  STD_LOGIC                   ;             --          .ready
		in_startofpacket : IN STD_LOGIC                   := '0';                  --          .startofpacket
		in_valid         : IN STD_LOGIC                        := '0';                --          .valid
		in_channel       : IN STD_LOGIC_VECTOR(127 DOWNTO 0)   := (OTHERS => '0')                --          .channel
	);

END COMPONENT; 
                SIGNAL s_csr_address : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0'); --       csr.address
		SIGNAL s_csr_read          : STD_LOGIC                     := '0';             --          .read
		SIGNAL s_csr_readdata      :  STD_LOGIC_VECTOR(31 DOWNTO 0);                    --          .readdata
		SIGNAL s_csr_write         :  STD_LOGIC                     := '0';             --          .write
		SIGNAL s_csr_writedata     :   STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0'); --          .writedata
		SIGNAL s_csr_waitrequest   :  STD_LOGIC;                                        --          .waitrequest
		SIGNAL s_csr_clk_clk       :  STD_LOGIC                     := '0';             --   csr_clk.clk
		SIGNAL s_csr_reset_reset_n :  STD_LOGIC                     := '0';             -- csr_reset.reset_n
		SIGNAL s_clk_clk           :   STD_LOGIC                     := '0';             --       clk.clk
		SIGNAL s_reset_reset_n     :   STD_LOGIC                     := '0';             --     reset.reset_n
		SIGNAL s_out0_data          :   STD_LOGIC_VECTOR(63 DOWNTO 0); --       in0.data
		SIGNAL s_out0_ready         :  STD_LOGIC         := '0';                             --          .ready
		SIGNAL s_out0_valid         :   STD_LOGIC                   ;             --          .valid
		SIGNAL s_out0_startofpacket :  STD_LOGIC                     ;             --          .startofpacket
		SIGNAL s_out0_endofpacket   :  STD_LOGIC                     ;             --          .endofpacket
		SIGNAL s_out0_empty         :  STD_LOGIC_VECTOR(2 DOWNTO 0) ; --          .empty
		SIGNAL s_out1_data          :   STD_LOGIC_VECTOR(63 DOWNTO 0) ; --       in1.data
		SIGNAL s_out1_ready         : STD_LOGIC     := '0';                                        --          .ready
		SIGNAL s_out1_valid         :   STD_LOGIC                     ;             --          .valid
		SIGNAL s_out1_startofpacket :   STD_LOGIC                    ;             --          .startofpacket
		SIGNAL s_out1_endofpacket   :   STD_LOGIC                     ;             --          .endofpacket
		SIGNAL s_out1_empty         :   STD_LOGIC_VECTOR(2 DOWNTO 0) ; --          .empty
		SIGNAL s_out2_data          :  STD_LOGIC_VECTOR(63 DOWNTO 0) ; --       in2.data
		SIGNAL s_out2_ready         :  STD_LOGIC   := '0';                                        --          .ready
		SIGNAL s_out2_valid         :   STD_LOGIC                     ;             --          .valid
		SIGNAL s_out2_startofpacket :   STD_LOGIC                     ;             --          .startofpacket
		SIGNAL s_out2_endofpacket   :   STD_LOGIC                     ;             --          .endofpacket
		SIGNAL s_out2_empty         :   STD_LOGIC_VECTOR(2 DOWNTO 0)  ; --          .empty
		SIGNAL s_out3_data          :   STD_LOGIC_VECTOR(63 DOWNTO 0) ; --       in3.data
		SIGNAL s_out3_ready         :  STD_LOGIC   := '0';                                        --          .ready
		SIGNAL s_out3_valid         :   STD_LOGIC                     ;             --          .valid
		SIGNAL s_out3_startofpacket :   STD_LOGIC                     ;             --          .startofpacket
		SIGNAL s_out3_endofpacket   :   STD_LOGIC                     ;             --          .endofpacket
		SIGNAL s_out3_empty         :   STD_LOGIC_VECTOR(2 DOWNTO 0)  ; --          .empty
		SIGNAL s_in_data          :  STD_LOGIC_VECTOR(63 DOWNTO 0) :=(OTHERS => '0');                    --       out.data
		SIGNAL s_in_empty         :  STD_LOGIC_VECTOR(2 DOWNTO 0) :=(OTHERS => '0');                     --          .empty
		SIGNAL s_in_endofpacket   :  STD_LOGIC :='0';                                        --          .endofpacket
		SIGNAL s_in_ready         :   STD_LOGIC                    ;             --          .ready
		SIGNAL s_in_startofpacket :  STD_LOGIC :='0';                                        --          .startofpacket
		SIGNAL s_in_valid         :  STD_LOGIC :='0';                                        --          .valid
		SIGNAL s_in_channel       :  STD_LOGIC_VECTOR(127 DOWNTO 0) :=(OTHERS => '0');                   --          .channel
    constant clk_period : time := 6.4 ns;

		
BEGIN

uut: dppsn_demux 
PORT MAP (
                csr_address  =>     s_csr_address,
		csr_read     =>   s_csr_read,
		csr_readdata     =>    s_csr_readdata ,
		csr_write        =>    s_csr_write ,
		csr_writedata    =>    s_csr_writedata,
		csr_waitrequest  =>    s_csr_waitrequest,
		csr_clk_clk      =>    s_csr_clk_clk,
		csr_reset_reset_n=>    s_csr_reset_reset_n,
		clk_clk          =>    s_clk_clk, 
		reset_reset_n    =>    s_reset_reset_n,
		out0_data         =>    s_out0_data ,
		out0_ready        =>    s_out0_ready,
		out0_valid        =>    s_out0_valid,
		out0_startofpacket =>   s_out0_startofpacket,
		out0_endofpacket   =>   s_out0_endofpacket,
		out0_empty        =>    s_out0_empty, 
		out1_data         =>    s_out1_data, 
		out1_ready        =>    s_out1_ready, 
		out1_valid        =>    s_out1_valid,
		out1_startofpacket =>   s_out1_startofpacket,
		out1_endofpacket   =>   s_out1_endofpacket,
		out1_empty    =>        s_out1_empty,
		out2_data       =>      s_out2_data,
		out2_ready      =>      s_out2_ready,
		out2_valid       =>     s_out2_valid, 
		out2_startofpacket =>   s_out2_startofpacket,
		out2_endofpacket   =>   s_out2_endofpacket,
		out2_empty      =>      s_out2_empty,
		out3_data      =>       s_out3_data,
		out3_ready      =>      s_out3_ready,                                      
		out3_valid      =>      s_out3_valid,
		out3_startofpacket =>   s_out3_startofpacket,
		out3_endofpacket   =>   s_out3_endofpacket, 
		out3_empty      =>      s_out3_empty,
		in_data       =>      s_in_data, 
		in_empty         =>   s_in_empty,
		in_endofpacket   =>   s_in_endofpacket,
		in_ready         =>   s_in_ready,
		in_startofpacket =>   s_in_startofpacket,
		in_valid         =>   s_in_valid,
		in_channel      =>   s_in_channel 
);

clk_proces: PROCESS
begin
        
        s_clk_clk <= '0';
        wait for clk_period/2;  
        s_clk_clk <= '1';
        wait for clk_period/2;  
END PROCESS; 

csr_clk_proces: PROCESS
begin
        
        s_csr_clk_clk <= '0';
        wait for clk_period/2;  
        s_csr_clk_clk <= '1';
        wait for clk_period/2;  
END PROCESS; 


source_stim: PROCESS
BEGIN

  --  s_reset_reset_n <= '1'; 
 	-- posto signal in_ready zavisi od signala out0_ready, out1_ready, out2_ready, out3_ready
	-- (unutar opisa komponente dppsn_demux), prilikom provjere dostupnosti izlaznih redova cekanaja
	-- tacnije spremnosti izlaznih reodva cekanja da prime pakete uzeta je u obzir samo vrijednost signala in_ready 
	 
  -- prvi paket, 15x64 bita
	-- paket treba biti proslijedjen na cetvrti red cekanja (out3)
	s_in_channel <= "01110100000111010000011101000001110100000111010000011101000011010111010000011101000001110100000111010000011101000001110100000001";
	 
  WAIT UNTIL s_in_ready = '1' and RISING_EDGE(s_clk_clk);
  s_in_valid <= '1';
	s_in_startofpacket <= '1';
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_startofpacket <= '0'; 
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
	s_in_endofpacket <= '1'; 
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period; 
	s_in_endofpacket <= '0'; 
	
	s_in_valid <= '0'; wait for clk_period; 
	
	-- drugi paket, 12x64 bita
	-- paket treba biti proslijedjen na drugi red cekanja (out1)
  s_in_channel <= "01110100000111010000011101000001110100000111010000011101000011010111010000011101000001110100000111010000011101000001110100000100";
	 
  WAIT UNTIL s_in_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_startofpacket <= '1';
	s_in_valid <= '1';
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_startofpacket <= '0'; 
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait for clk_period;
	s_in_endofpacket <= '1'; 
	s_in_data <= "0000000000011111111111111111111111111111111111111111111111111111"; wait for clk_period; 
	s_in_endofpacket <= '0'; 
	
	s_in_valid <= '0'; wait for clk_period; 
	
	-- treci paket, 8x64 bita
	-- paket treba biti proslijedjen na prvi i drugi red cekanja (out0 i out1)
  s_in_channel <= "01110100000111010000011101000001110100000111010000011101000011010111010000011101000001110100000111010000011101000001110100001100";
	 
  WAIT UNTIL s_in_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_startofpacket <= '1';
	s_in_valid <= '1';
	s_in_data <= "0000000000011111111111111111111111111111111111110000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_startofpacket <= '0'; 
	s_in_data <= "0000000000011111111111111111111111111111111111110000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "0000000000011111111111111111111111111111111111110000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "0000000000011111111111111111111111111111111111110000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111111111111111111111111111111111110000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111111111111111111111111111111111110000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111111111111111111111111111111111110000000000000000"; wait for clk_period;
	s_in_endofpacket <= '1'; 
	s_in_data <= "0000000000011111111111111111111111111111111111110000000000000000"; wait for clk_period; 
	s_in_endofpacket <= '0'; 
	
	s_in_valid <= '0'; wait for clk_period; 
	
	-- cetvrti paket, 8x64 bita
	-- paket nece biti proslijedjen niti na jedan red cekanja zbog vrijednosti posljednja cetiri bita signala in_channel ("0000")
  s_in_channel <= "01110100000111010000011101000001110100000111010000011101000011010111010000011101000001110100000111010000011101000001110100000000";
  WAIT UNTIL s_in_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_startofpacket <= '1';
	s_in_valid <= '1';
	s_in_data <= "0000000000011111110000000000000000000000000000000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_startofpacket <= '0'; 
	s_in_data <= "0000000000011111110000000000000000000000000000000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "0000000000011111110000000000000000000000000000000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "0000000000011111110000000000000000000000000000000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111110000000000000000000000000000000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111110000000000000000000000000000000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111110000000000000000000000000000000000000000000000"; wait for clk_period;
	s_in_endofpacket <= '1'; 
	s_in_data <= "0000000000011111110000000000000000000000000000000000000000000000"; wait for clk_period; 
	s_in_endofpacket <= '0'; 
	
	s_in_valid <= '0'; wait for clk_period;
	
	-- peti paket, 8x64 bita
	-- paket treba biti proslijedjen na svaki od izlaznih redova cekanja (out0, out1, out2 i out3)
  s_in_channel <= "01110100000111010000011101000001110100000111010000011101000011010111010000011101000001110100000111010000011101000001110100001111";
  WAIT UNTIL s_in_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_startofpacket <= '1';
	s_in_valid <= '1';
	s_in_data <= "0000000000011111110000000000000000111111111100000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_startofpacket <= '0'; 
	s_in_data <= "0000000000011111110000000000000000111111111100000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "0000000000011111110000000000000000111111111100000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "0000000000011111110000000000000000111111111100000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111110000000000000000111111111100000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111110000000000000000111111111100000000000000000000"; wait UNTIL s_in_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000011111110000000000000000111111111100000000000000000000"; wait for clk_period;
	s_in_endofpacket <= '1'; 
	s_in_data <= "0000000000011111110000000000000000111111111100000000000000000000"; wait for clk_period; 
	s_in_endofpacket <= '0'; 
	
	s_in_valid <= '0'; wait for clk_period;
	

	
WAIT;
END PROCESS;

-- proces za prvi izlazni red cekanja
stim0: PROCESS 
BEGIN 
s_out0_ready <= '0';  wait for 4*clk_period;
s_out0_ready <= '1';  wait for 10*clk_period;
END PROCESS;

-- proces za drugi izlazni red cekanja
stim1: PROCESS 
BEGIN 
s_out1_ready <= '0';  wait for 4*clk_period;
s_out1_ready <= '1';  wait for 13*clk_period;
END PROCESS;

-- proces za treci izlazni red cekanja
out2_stim: PROCESS 
BEGIN 
s_out2_ready <= '0';  wait for 4*clk_period;
s_out2_ready <= '1';  wait for 13*clk_period;
END PROCESS;

-- proces za cetvrti izlazni red cekanja
out3_stim: PROCESS 
BEGIN 
s_out3_ready <= '0';  wait for 4*clk_period;
s_out3_ready <= '1';  wait for 13*clk_period;
END PROCESS;

verif: PROCESS 
BEGIN 
  -- ocekuje se paket samo na cetvrtom izlazu (out3)
wait for 5*clk_period; --signal in_ready je '0' (izlazi nisu spremni za prijem paketa)
ASSERT (s_out0_valid = '0' AND s_out1_valid = '0' AND s_out2_valid = '0' AND s_out3_valid = '1')
REPORT "Greska 1" SEVERITY error; 

  -- ocekuje se paket samo na drugom izlazu (out1)
wait for 15*clk_period; -- trajanje prenosa prvog paketa 
wait for 4*clk_period; -- signal in_ready je '0'
wait for clk_period; -- signal in_valid je '0'
ASSERT (s_out0_valid = '0' AND s_out1_valid = '1' AND s_out2_valid = '0' AND s_out3_valid = '0')
REPORT "Greska 2" SEVERITY error;

-- ocekuje se paket na prvom i drugom izlazu (out0 i out1)
wait for 12*clk_period; -- trajanje prenosa drugog paketa 
wait for 4*clk_period; -- signal in_ready je '0'
wait for clk_period; -- -- signal in_valid je '0'
ASSERT (s_out0_valid = '1' AND s_out1_valid = '1' AND s_out2_valid = '0' AND s_out3_valid = '0')
REPORT "Greska 3" SEVERITY error;

-- paket nece biti prosliejdjen niti na jedan izlaz ("0000")
wait for 8*clk_period; -- trajanje prenosa treceg paketa 
wait for clk_period; -- -- signal in_valid je '0'
ASSERT (s_out0_valid = '0' AND s_out1_valid = '0' AND s_out2_valid = '0' AND s_out3_valid = '0')
REPORT "Greska 4" SEVERITY error;

-- paket bi trebao biti poslijedjen na svaki izlazni red cekanja ("1111")
wait for 8*clk_period; -- trajanje prenosa cetvrtog paketa 
wait for clk_period; -- -- signal in_valid je '0'
ASSERT (s_out0_valid = '1' AND s_out1_valid = '1' AND s_out2_valid = '1' AND s_out3_valid = '1')
REPORT "Greska 5" SEVERITY error;
  
WAIT; 
END PROCESS verif;

END ARCHITECTURE;
