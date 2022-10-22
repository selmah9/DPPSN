LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY dppsn_scheduler_testbench IS 
END dppsn_scheduler_testbench; 

ARCHITECTURE arch_dppsn_scheduler_testbench OF dppsn_scheduler_testbench IS 
COMPONENT dppsn_scheduler IS  
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
		in0_data          : IN  STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0'); --       in0.data
		in0_ready         : OUT STD_LOGIC;                                        --          .ready
		in0_valid         : IN  STD_LOGIC                     := '0';             --          .valid
		in0_startofpacket : IN  STD_LOGIC                     := '0';             --          .startofpacket
		in0_endofpacket   : IN  STD_LOGIC                     := '0';             --          .endofpacket
		in0_empty         : IN  STD_LOGIC_VECTOR(2 DOWNTO 0)  := (OTHERS => '0'); --          .empty
		in1_data          : IN  STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0'); --       in1.data
		in1_ready         : OUT STD_LOGIC;                                        --          .ready
		in1_valid         : IN  STD_LOGIC                     := '0';             --          .valid
		in1_startofpacket : IN  STD_LOGIC                     := '0';             --          .startofpacket
		in1_endofpacket   : IN  STD_LOGIC                     := '0';             --          .endofpacket
		in1_empty         : IN  STD_LOGIC_VECTOR(2 DOWNTO 0)  := (OTHERS => '0'); --          .empty
		in2_data          : IN  STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0'); --       in2.data
		in2_ready         : OUT STD_LOGIC;                                        --          .ready
		in2_valid         : IN  STD_LOGIC                     := '0';             --          .valid
		in2_startofpacket : IN  STD_LOGIC                     := '0';             --          .startofpacket
		in2_endofpacket   : IN  STD_LOGIC                     := '0';             --          .endofpacket
		in2_empty         : IN  STD_LOGIC_VECTOR(2 DOWNTO 0)  := (OTHERS => '0'); --          .empty
		in3_data          : IN  STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0'); --       in3.data
		in3_ready         : OUT STD_LOGIC;                                        --          .ready
		in3_valid         : IN  STD_LOGIC                     := '0';             --          .valid
		in3_startofpacket : IN  STD_LOGIC                     := '0';             --          .startofpacket
		in3_endofpacket   : IN  STD_LOGIC                     := '0';             --          .endofpacket
		in3_empty         : IN  STD_LOGIC_VECTOR(2 DOWNTO 0)  := (OTHERS => '0'); --          .empty
		out_data          : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);                    --       out.data
		out_empty         : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);                     --          .empty
		out_endofpacket   : OUT STD_LOGIC;                                        --          .endofpacket
		out_ready         : IN  STD_LOGIC                     := '0';             --          .ready
		out_startofpacket : OUT STD_LOGIC;                                        --          .startofpacket
		out_valid         : OUT STD_LOGIC;                                        --          .valid
		out_channel       : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)                   --          .channel
		--temp : out std_logic_vector (2 downto 0) 
	);

END COMPONENT; 
    SIGNAL s_csr_address : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0'); --       csr.address
		SIGNAL s_csr_read    :  STD_LOGIC                     := '0';             --          .read
		SIGNAL s_csr_readdata :  STD_LOGIC_VECTOR(31 DOWNTO 0);                    --          .readdata
		SIGNAL s_csr_write      :   STD_LOGIC                     := '0';             --          .write
		SIGNAL s_csr_writedata     :  STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0'); --          .writedata
		SIGNAL s_csr_waitrequest   : STD_LOGIC;                                        --          .waitrequest
		SIGNAL s_csr_clk_clk       :  STD_LOGIC                     := '0';             --   csr_clk.clk
		SIGNAL s_csr_reset_reset_n :  STD_LOGIC                     := '0';             -- csr_reset.reset_n
		SIGNAL s_clk_clk           :  STD_LOGIC                     := '0';             --       clk.clk
		SIGNAL s_reset_reset_n     :  STD_LOGIC                     := '0';             --     reset.reset_n
		SIGNAL s_in0_data          :  STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0'); --       in0.data
		SIGNAL s_in0_ready         :  STD_LOGIC;                                        --          .ready
		SIGNAL s_in0_valid         :  STD_LOGIC                     := '0';             --          .valid
		SIGNAL s_in0_startofpacket :  STD_LOGIC                     := '0';             --          .startofpacket
		SIGNAL s_in0_endofpacket   :  STD_LOGIC                     := '0';             --          .endofpacket
		SIGNAL s_in0_empty         :  STD_LOGIC_VECTOR(2 DOWNTO 0)  := (OTHERS => '0'); --          .empty
		SIGNAL s_in1_data          :  STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0'); --       in1.data
		SIGNAL s_in1_ready         : STD_LOGIC;                                        --          .ready
		SIGNAL s_in1_valid         :  STD_LOGIC                     := '0';             --          .valid
		SIGNAL s_in1_startofpacket :  STD_LOGIC                     := '0';             --          .startofpacket
		SIGNAL s_in1_endofpacket   :  STD_LOGIC                     := '0';             --          .endofpacket
		SIGNAL s_in1_empty         :  STD_LOGIC_VECTOR(2 DOWNTO 0)  := (OTHERS => '0'); --          .empty
		SIGNAL s_in2_data          :  STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0'); --       in2.data
		SIGNAL s_in2_ready         : STD_LOGIC;                                        --          .ready
		SIGNAL s_in2_valid         :  STD_LOGIC                     := '0';             --          .valid
		SIGNAL s_in2_startofpacket :  STD_LOGIC                     := '0';             --          .startofpacket
		SIGNAL s_in2_endofpacket   :  STD_LOGIC                     := '0';             --          .endofpacket
		SIGNAL s_in2_empty         :  STD_LOGIC_VECTOR(2 DOWNTO 0)  := (OTHERS => '0'); --          .empty
		SIGNAL s_in3_data          :  STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0'); --       in3.data
		SIGNAL s_in3_ready         :  STD_LOGIC;                                        --          .ready
		SIGNAL s_in3_valid         :  STD_LOGIC                     := '0';             --          .valid
		SIGNAL s_in3_startofpacket :  STD_LOGIC                     := '0';             --          .startofpacket
		SIGNAL s_in3_endofpacket   :  STD_LOGIC                     := '0';             --          .endofpacket
		SIGNAL s_in3_empty         :  STD_LOGIC_VECTOR(2 DOWNTO 0)  := (OTHERS => '0'); --          .empty
		SIGNAL s_out_data          : STD_LOGIC_VECTOR(63 DOWNTO 0);                    --       out.data
		SIGNAL s_out_empty         :  STD_LOGIC_VECTOR(2 DOWNTO 0);                     --          .empty
		SIGNAL s_out_endofpacket   :  STD_LOGIC;                                        --          .endofpacket
		SIGNAL s_out_ready         :  STD_LOGIC                     := '0';             --          .ready
		SIGNAL s_out_startofpacket : STD_LOGIC;                                        --          .startofpacket
		SIGNAL s_out_valid         : STD_LOGIC;                                        --          .valid
		SIGNAL s_out_channel       :  STD_LOGIC_VECTOR(127 DOWNTO 0);
		constant clk_period : time := 6.4 ns;
		--signal s_temp : std_logic_vector (2 downto 0);
		--signal br_paketa : integer :=0 ;
		

BEGIN

uut: dppsn_scheduler 
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
		in0_data         =>    s_in0_data ,
		in0_ready        =>    s_in0_ready,
		in0_valid        =>    s_in0_valid,
		in0_startofpacket =>   s_in0_startofpacket,
		in0_endofpacket   =>   s_in0_endofpacket,
		in0_empty        =>    s_in0_empty, 
		in1_data         =>    s_in1_data, 
		in1_ready        =>    s_in1_ready, 
		in1_valid        =>    s_in1_valid,
		in1_startofpacket =>   s_in1_startofpacket,
		in1_endofpacket   =>   s_in1_endofpacket,
		in1_empty    =>        s_in1_empty,
		in2_data       =>      s_in2_data,
		in2_ready      =>      s_in2_ready,
		in2_valid       =>     s_in2_valid, 
		in2_startofpacket =>   s_in2_startofpacket,
		in2_endofpacket   =>   s_in2_endofpacket,
		in2_empty      =>      s_in2_empty,
		in3_data      =>       s_in3_data,
		in3_ready      =>      s_in3_ready,                                      
		in3_valid      =>      s_in3_valid,
		in3_startofpacket =>   s_in3_startofpacket,
		in3_endofpacket   =>   s_in3_endofpacket, 
		in3_empty      =>      s_in3_empty,
		out_data       =>      s_out_data, 
		out_empty         =>   s_out_empty,
		out_endofpacket   =>   s_out_endofpacket,
		out_ready         =>   s_out_ready,
		out_startofpacket =>   s_out_startofpacket,
		out_valid         =>   s_out_valid,
		out_channel      =>   s_out_channel 
		--temp => s_temp
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
  --pomocu s_csr_write data se bira nacin posluzivanja pomocu prva cetiri bita dok se u grupama od sest bita upisuju vrijednosti kvantuma za deficitarni Round Robin
  -- "0000----------------------------" -> prioritetni nacin posluzivanja
  -- "0001----------------------------" -> Round Robin nacin posluzivanja
  -- "0010----------------------------" -> Deficitarni Round Robin nacin posluzivanja
  s_csr_writedata <= "00110000100000100000100000100000"; wait for 10ns;
  s_csr_writedata <= "00000011101101101111011001101101";
  s_out_ready <= '1';
  wait for clk_period;
  while s_csr_write = '1' loop
    wait for clk_period;
    if ((s_in0_valid or s_in1_valid or s_in2_valid or s_in3_valid) = '1') then
      s_out_ready <= '0' ; wait for clk_period;
      wait until ((s_in0_endofpacket or s_in1_endofpacket or s_in2_endofpacket or s_in3_endofpacket) = '1');
      wait for 20ns;
      s_out_ready <= '1';
    end if;
  end loop;

  WAIT;
END PROCESS;

stim0: PROCESS 
BEGIN  
  
  s_in0_startofpacket <='1';
  s_in0_valid <= '1';
    if (s_in0_ready /= '1') then
    wait until s_in0_ready = '1';
  end if;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_startofpacket <='0';
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; 
  s_in0_endofpacket <= '1'; wait for clk_period;
  s_in0_endofpacket <= '0';
  s_in0_valid <= '0'; wait for clk_period;
 

  s_in0_startofpacket <='1';
  s_in0_valid <= '1';
    if (s_in0_ready /= '1') then
    wait until s_in0_ready = '1';
  end if;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_startofpacket <='0';
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; wait for clk_period;
  s_in0_data <= "0000000000000000000000000000000000000000000000000000000000000000"; 
  s_in0_endofpacket <= '1'; wait for clk_period;
  s_in0_endofpacket <= '0';
  s_in0_valid <= '0'; wait for clk_period;
  
  WAIT;
END PROCESS;

stim1: PROCESS 
BEGIN 
 
 
    s_in1_startofpacket <='1';
  s_in1_valid <= '1';
  if (s_in1_ready /= '1') then
    wait until s_in1_ready = '1';
  end if;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_startofpacket <='0';
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; 
  s_in1_endofpacket <= '1'; wait for clk_period;
  s_in1_endofpacket <= '0';
  s_in1_valid <= '0'; wait for clk_period;
  
      s_in1_startofpacket <='1';
  s_in1_valid <= '1';
  if (s_in1_ready /= '1') then
    wait until s_in1_ready = '1';
  end if;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_startofpacket <='0';
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in1_data <= "1111111111111111111111111111111111111111111111111111111111111111"; 
  s_in1_endofpacket <= '1'; wait for clk_period;
  s_in1_endofpacket <= '0';
  s_in1_valid <= '0'; wait for clk_period;
  WAIT;
END PROCESS;

stim2: PROCESS
BEGIN 
  
  s_in2_startofpacket <='1';
  s_in2_valid <= '1';
  if (s_in2_ready /= '1') then
    wait until s_in2_ready = '1';
  end if;
  s_in2_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in2_startofpacket <='0';
  s_in2_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in2_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in2_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in2_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in2_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in2_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in2_data <= "1111111111111111111111111111111111111111111111111111111111111111"; 
  s_in2_endofpacket <= '1'; wait for clk_period;
  s_in2_endofpacket <= '0';
  s_in2_valid <= '0'; wait for clk_period;
  

  WAIT;
END PROCESS;

stim3: PROCESS 
BEGIN
  
  s_in3_startofpacket <='1';
  s_in3_valid <= '1';
    if (s_in3_ready /= '1') then
    wait until s_in3_ready = '1';
  end if;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_startofpacket <='0';
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; 
  s_in3_endofpacket <= '1'; wait for clk_period;
  s_in3_endofpacket <= '0';
  s_in3_valid <= '0'; wait for clk_period;
  
    s_in3_startofpacket <='1';
  s_in3_valid <= '1';
    if (s_in3_ready /= '1') then
    wait until s_in3_ready = '1';
  end if;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_startofpacket <='0';
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
  s_in3_data <= "1111111111111111111111111111111111111111111111111111111111111111"; 
  s_in3_endofpacket <= '1'; wait for clk_period;
  s_in3_endofpacket <= '0';
  s_in3_valid <= '0'; wait for clk_period;
  WAIT;
END PROCESS;

verif: PROCESS 
BEGIN 
  wait for 10ns;
  --provjeravamo prioritetno posluzivanje
  --provjeravamo da li je prvo posluzen paket iz reda cekanja 0
  
  WAIT FOR 2* clk_period;
  ASSERT ( s_out_channel(0) = '0' AND s_out_channel(1) = '0' AND s_out_channel(2) = '0' AND s_out_channel(3) = '1')
  REPORT "GRESKA 1" SEVERITY error; 
  
  --provjeravamo da li je prvo posluzen paket iz reda cekanja 1
  WAIT FOR 7* clk_period;
  ASSERT ( s_out_channel(0) = '0' AND s_out_channel(1) = '0' AND s_out_channel(2) = '1' AND s_out_channel(3) = '0')
  REPORT "GRESKA 2" SEVERITY error; 
  
  --provjeravamo da li je prvo posluzen paket iz reda cekanja 0, jer je u medjuvremenu u 0-ti red cekanja stigao paket
  
  WAIT FOR 11*clk_period;
  ASSERT ( s_out_channel(0) = '0' AND s_out_channel(1) = '0' AND s_out_channel(2) = '0' AND s_out_channel(3) = '1')
  REPORT "GRESKA 3" SEVERITY error; 
  
   --provjeravamo da li je prvo posluzen paket iz reda cekanja 1, jer je u medjuvremenu stigao paket
  
  WAIT FOR 10*clk_period;
  ASSERT ( s_out_channel(0) = '0' AND s_out_channel(1) = '0' AND s_out_channel(2) = '1' AND s_out_channel(3) = '0')
  REPORT "GRESKA 4" SEVERITY error; 
  
  --provjeravamo da li je prvo posluzen paket iz reda cekanja 2
  
  WAIT FOR 10*clk_period;
  ASSERT ( s_out_channel(0) = '0' AND s_out_channel(1) = '1' AND s_out_channel(2) = '0' AND s_out_channel(3) = '0')
  REPORT "GRESKA 5" SEVERITY error; 
  
  --provjeravamo da li je prvo posluzen paket iz reda cekanja 3
  
  WAIT FOR 10*clk_period;
  ASSERT ( s_out_channel(0) = '1' AND s_out_channel(1) = '0' AND s_out_channel(2) = '0' AND s_out_channel(3) = '0')
  REPORT "GRESKA 6" SEVERITY error; 
  
    --provjeravamo da li je prvo posluzen drugi paket iz reda cekanja 3
  
  WAIT FOR 12*clk_period;
  ASSERT ( s_out_channel(0) = '1' AND s_out_channel(1) = '0' AND s_out_channel(2) = '0' AND s_out_channel(3) = '0')
  REPORT "GRESKA 7" SEVERITY error; 
  
--  -- provjeravamo Round Robin 
--  --provjeravamo da li je prvo posluzen paket iz reda cekanja 0
  
--  WAIT FOR 2* clk_period;
--  ASSERT ( s_out_channel(0) = '0' AND s_out_channel(1) = '0' AND s_out_channel(2) = '0' AND s_out_channel(3) = '1')
--  REPORT "GRESKA 1" SEVERITY error;
  
--  --provjeravamo da li je prvo posluzen paket iz reda cekanja 1
  
--  WAIT FOR 10* clk_period;
--  ASSERT ( s_out_channel(0) = '0' AND s_out_channel(1) = '0' AND s_out_channel(2) = '1' AND s_out_channel(3) = '0')
--  REPORT "GRESKA 2" SEVERITY error;
  
--  --provjeravamo da li je prvo posluzen paket iz reda cekanja 2
  
--  WAIT FOR 11* clk_period;
--  ASSERT ( s_out_channel(0) = '0' AND s_out_channel(1) = '1' AND s_out_channel(2) = '0' AND s_out_channel(3) = '0')
--  REPORT "GRESKA 3" SEVERITY error;
  
--  --provjeravamo da li je prvo posluzen paket iz reda cekanja 3
  
--  WAIT FOR 11* clk_period;
--  ASSERT ( s_out_channel(0) = '1' AND s_out_channel(1) = '0' AND s_out_channel(2) = '0' AND s_out_channel(3) = '0')
--  REPORT "GRESKA 4" SEVERITY error; 
  
--  --provjeravamo da li je posluzen drugi paket iz reda cekanja 0
  
--  WAIT FOR 11* clk_period;
--  ASSERT ( s_out_channel(0) = '0' AND s_out_channel(1) = '0' AND s_out_channel(2) = '0' AND s_out_channel(3) = '1')
--  REPORT "GRESKA 5" SEVERITY error;  
  
--  --provjeravamo da li je posluzen drugi paket iz reda cekanja 1
  
--  WAIT FOR 11* clk_period;
--  ASSERT ( s_out_channel(0) = '0' AND s_out_channel(1) = '0' AND s_out_channel(2) = '1' AND s_out_channel(3) = '0')
--  REPORT "GRESKA 6" SEVERITY error; 
  
--  --provjeravamo da li je posluzen drugi paket iz reda cekanja 3
  
--  WAIT FOR 11* clk_period;
--  ASSERT ( s_out_channel(0) = '1' AND s_out_channel(1) = '0' AND s_out_channel(2) = '0' AND s_out_channel(3) = '0')
--  REPORT "GRESKA 7" SEVERITY error; 
  
wait for 10 ns; 
WAIT; 
END PROCESS;

END arch_dppsn_scheduler_testbench;