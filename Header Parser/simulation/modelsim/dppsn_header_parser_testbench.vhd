LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY dppsn_header_parser_testbench IS 
END dppsn_header_parser_testbench; 

ARCHITECTURE arch_dppsn_header_parser_testbench OF dppsn_header_parser_testbench IS 
COMPONENT dppsn_header_parser IS  
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
		in_data          : IN  STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0'); --       in0.data
		in_ready         : OUT STD_LOGIC;                                        --          .ready
		in_valid         : IN  STD_LOGIC                     := '0';             --          .valid
		in_startofpacket : IN  STD_LOGIC                     := '0';             --          .startofpacket
		in_endofpacket   : IN  STD_LOGIC                     := '0';             --          .endofpacket
		in_empty         : IN  STD_LOGIC_VECTOR(2 DOWNTO 0)  := (OTHERS => '0'); --          .empty
    in_channel        : IN  STD_LOGIC_VECTOR(127 DOWNTO 0) := (OTHERS => '0'); --          .channel
		out_data          : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);                    --       out.data
		out_empty         : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);                     --          .empty
		out_endofpacket   : OUT STD_LOGIC;                                        --          .endofpacket
		out_ready         : IN  STD_LOGIC                     := '0';             --          .ready
		out_startofpacket : OUT STD_LOGIC;                                        --          .startofpacket
		out_valid         : OUT STD_LOGIC;                                        --          .valid
		out_channel       : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)                    --          .channel
	);

END COMPONENT; 
             SIGNAL   s_csr_address : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0'); --       csr.address
		SIGNAL s_csr_read    :  STD_LOGIC                     := '0';             --          .read
		SIGNAL s_csr_readdata :  STD_LOGIC_VECTOR(31 DOWNTO 0);                    --          .readdata
		SIGNAL s_csr_write      :   STD_LOGIC                     := '0';             --          .write
		SIGNAL s_csr_writedata     :  STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0'); --          .writedata
		SIGNAL s_csr_waitrequest   : STD_LOGIC;                                        --          .waitrequest
		SIGNAL s_csr_clk_clk       :  STD_LOGIC                     := '0';             --   csr_clk.clk
		SIGNAL s_csr_reset_reset_n :  STD_LOGIC                     := '0';             -- csr_reset.reset_n
		SIGNAL s_clk_clk           :  STD_LOGIC                     := '0';             --       clk.clk
		SIGNAL s_reset_reset_n     :  STD_LOGIC                     := '0';             --     reset.reset_n
		SIGNAL s_in_data          :  STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0'); --       in0.data
		SIGNAL s_in_ready         :  STD_LOGIC;                                        --          .ready
		SIGNAL s_in_valid         :  STD_LOGIC                     := '0';             --          .valid
		SIGNAL s_in_startofpacket :  STD_LOGIC                     := '0';             --          .startofpacket
		SIGNAL s_in_endofpacket   :  STD_LOGIC                     := '0';             --          .endofpacket
		SIGNAL s_in_empty         :  STD_LOGIC_VECTOR(2 DOWNTO 0)  := (OTHERS => '0'); --          .empty
		SIGNAL s_in_channel        : STD_LOGIC_VECTOR(127 DOWNTO 0) := (OTHERS => '0'); --          .channel
		SIGNAL s_out_data          : STD_LOGIC_VECTOR(63 DOWNTO 0) ;                   --       out.data
		SIGNAL s_out_empty         :  STD_LOGIC_VECTOR(2 DOWNTO 0);                     --          .empty
		SIGNAL s_out_endofpacket   :  STD_LOGIC;                                        --          .endofpacket
		SIGNAL s_out_ready         :  STD_LOGIC                     := '0';             --          .ready
		SIGNAL s_out_startofpacket : STD_LOGIC;                                        --          .startofpacket
		SIGNAL s_out_valid         : STD_LOGIC;                                        --          .valid
		SIGNAL s_out_channel       :  STD_LOGIC_VECTOR(127 DOWNTO 0);
		constant clk_period : time := 6.4 ns;
BEGIN

uut: dppsn_header_parser 
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
		in_data         =>    s_in_data ,
		in_ready        =>    s_in_ready,
		in_valid        =>    s_in_valid,
		in_startofpacket =>   s_in_startofpacket,
		in_endofpacket   =>   s_in_endofpacket,
		in_empty        =>    s_in_empty, 
		in_channel      =>    s_in_channel,
		out_data       =>      s_out_data, 
		out_empty         =>   s_out_empty,
		out_endofpacket   =>   s_out_endofpacket,
		out_ready         =>   s_out_ready,
		out_startofpacket =>   s_out_startofpacket,
		out_valid         =>   s_out_valid,
		out_channel      =>   s_out_channel
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
	
	s_reset_reset_n <= '1'; 
	s_csr_write <= '1';
	s_csr_writedata <= "00000000000000000000010000001000"; -- set od posljednjih 16 bita se kriste za parsiranje
	s_in_channel <= "01110100000111010000011101000001110100000111010000011101000011010111010000011101000001110100000111010000011101000001110100000001";
	-- paketi dolaze iz cetvrtog reda cekanja ("0001")

  
  -- prvi paket, 15x64 bita
  -- ocekuje se prenos 13 paketa u 13 takt intervala kada je signal out_ready = '1'
  -- zatim se naredna 4 takt intervala ne prenosi nista - prenos je zaustavljen jer je out_ready = '0'
  -- u naredna 2 takt intervala (kada je out_ready = '1') prenose se preostala 2 paketa, sto u konacnici znaci
  -- da se ovaj paketa prenosi 19 takt intervala + 1 takt interval pauze izmedju slanja dva paketa
  WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
  s_in_valid <= '1'; 
	s_in_startofpacket <= '1';
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_startofpacket <= '0'; 
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk); 
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait UNTIL s_out_ready = '1'  and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period;
	s_in_endofpacket <= '1'; 
	s_in_data <= "1111111111111111111111111111111111111111111111111111111111111111"; wait for clk_period; 
	s_in_endofpacket <= '0'; 
	
	s_in_valid <= '0'; 
	
	-- drugi paket, 8x64 bita
  -- ocekuje se prenos 8 paketa u 8 takt intervala kada je signal out_ready = '1'
  -- ukupno vrijeme trajanja prenosa drugog paketa iznosi 8 takt intervala +  1 takt interval pauze
  WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
  s_in_valid <= '1'; 
	s_in_startofpacket <= '1';
	s_in_data <= "1111111111111111111000000000000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk); 
	s_in_startofpacket <= '0'; 
	s_in_data <= "1111111111111111111000000000000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111000000000000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111000000000000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111000000000000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111000000000000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "1111111111111111111000000000000000000000000000000000000000000000"; wait for clk_period;
	s_in_endofpacket <= '1';
	s_in_data <= "1111111111111111111000000000000000000000000000000000000000000000"; wait for clk_period;  
	s_in_endofpacket <= '0';
	
	s_in_valid <= '0'; 
	
	-- treci paket, 8x64 bita, iz drugog reda cekanja
  -- unutar preostala 2 takt intervala za koji je out_ready = '1' se prenosi 2x64 bita
  -- nakon toga slijedi period od 4 takt intervala za cije vrijeme nema prenosa (out_ready = '0')
  -- preostalih 6 paketa se prenosi unutar 6 takt inetrvala sto znaci da vrijeme potrebno za prenos treceg 
  -- paketa iznosi 12 takt intervala +1 takt interval pauze
  s_in_channel <= "01110100000111010000011101000001110100000111010000011101000011010111010000011101000001110100000111010000011101000001110100000100";
  WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
  s_in_valid <= '1'; 
  s_in_startofpacket <= '1';
	s_in_data <= "0111010000011101000001110100000111010000011101000001110100001101"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk); 
	s_in_startofpacket <= '0'; 
	s_in_data <= "0111010000011101000001110100000111010000011101000001110100001101"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "0111010000011101000001110100000111010000011101000001110100001101"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "0111010000011101000001110100000111010000011101000001110100001101"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "0111010000011101000001110100000111010000011101000001110100001101"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "0111010000011101000001110100000111010000011101000001110100001101"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "0111010000011101000001110100000111010000011101000001110100001101"; wait for clk_period;     
	s_in_endofpacket <= '1';
	s_in_data <= "0111010000011101000001110100000111010000011101000001110100001101"; wait for clk_period; 
	s_in_endofpacket <= '0';

  
  -- pauza unutar kojeg je valid signal '0' i traje 8 takt intervala
  -- naredni paket koji stigne ce biti poslan onda kada valid signal opet postane '1' i kada je odrediste
  -- spremno za prijem (out_ready = '1')
	s_in_valid <= '0'; WAIT for 8*clk_period;
	
  
  -- cetvrti paketa, 8x64 bita	
  -- paket dolazi iz drugog reda cekanja "0100"
  -- na izlazu se ocekuje signal out_channel koji je jednak 0 zbog aktiviranog reset_reset_n signala
  s_csr_write <= '0';
  s_reset_reset_n <= '0';
  WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
  s_in_valid <= '1'; 
	s_in_startofpacket <= '1';
	s_in_data <= "0000000000111111111111111111000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk); 
	s_in_startofpacket <= '0'; 
	s_in_data <= "0000000000111111111111111111000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000111111111111111111000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000111111111111111111000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000111111111111111111000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000111111111111111111000000000000000000000000000000000000"; WAIT UNTIL s_out_ready = '1' and RISING_EDGE(s_clk_clk);
	s_in_data <= "0000000000111111111111111111000000000000000000000000000000000000"; wait for clk_period;
	s_in_endofpacket <= '1';
	s_in_data <= "0000000000111111111111111111000000000000000000000000000000000000"; wait for clk_period;  
	s_in_endofpacket <= '0';

WAIT;
END PROCESS;


-- stimulacijski proces koji generise out_ready signal - signal koji govori da li je odrediste spremno za
-- prelazak u naredni ciklus transfera paketa
sink_stim: PROCESS 
BEGIN 

s_out_ready <= '0';  wait for 4*clk_period;
s_out_ready <= '1';  wait for 13*clk_period;

END PROCESS;


-- signali in_startofpacket, in_endofpacket, in_valid i in_data su pomjereni za 8 takt intervala, a ovo 
-- kasnjenje je navedeno u samom vhdl opisu komponente, dok signal out_ready nije 'zahvacen'
-- ovim kasnjenjem (unutar opisa komponente), te se on odmah prenosi sa ulaza na izlaz, zbog ove cinjenice
-- se mora posebna paznja posvetiti prilikom verifikacije rezultata, tacnije, potrebno je obratiti paznju 
-- na pojedine izlazne signale zbog mogucnosti uvodjenja dodatnog kasnjenja od 4 takt intervala (out_ready = '0')

verif: PROCESS 
BEGIN 
wait for 5*clk_period; -- signal out_ready je '0'
wait for 8*clk_period; -- kasnjenje od 8 takt inetrvala navedeno unutar opisa komponente
ASSERT (s_out_channel = "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110001")
REPORT "Greska 1" SEVERITY error;

wait for 15*clk_period; -- trajanje prenosa prvog paketa
wait for 4*clk_period; -- s_out_ready = '0'
wait for clk_period; -- pauza izmedju slanja dva paketa
ASSERT (s_out_channel = "11111111111111111110000000000000000000000000000000000000000000001111111111111111111000000000000000000000000000000000000000000001")
REPORT "Greska 2" SEVERITY error;

wait for 8*clk_period; -- trajanje prenosa drugog paketa
wait for 4*clk_period; -- s_out_ready = '0'
wait for clk_period; -- pauza izmedju slanja dva paketa
ASSERT (s_out_channel = "01110100000111010000011101000001110100000111010000011101000011010111010000011101000001110100000111010000011101000001110100000100")
REPORT "Greska 3" SEVERITY error;

wait for 8*clk_period; -- trajanje prenosa treceg paketa
wait for 8*clk_period; -- uvedena pauza od 8 takt intervala (in_valid signal je postavljen na 0)
wait for 4*clk_period; -- cekanje da signal out_ready opet bude '1' 
ASSERT (s_out_channel = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000")
REPORT "Greska 4" SEVERITY error;

--wait for 8*clk_period; -- trajanje prenosa cetvrtog paketa
--wait for 4*clk_period; -- s_out_ready = '0'

WAIT; 
END PROCESS verif;

END ARCHITECTURE;


