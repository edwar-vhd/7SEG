-------------------------------------------------------------------
-- University: Universidad Pedagógica y Tecnológica de Colombia
-- Author: Juan David Guerrero
--
-- Create Date: 27/05/2020
-- Project Name: 7 segment display simulation model
-- Description: output printable character on modelsim waveform
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Display_7seg_tb is 
end entity;

architecture behavior of Display_7seg_tb is
signal		segm_in	    : std_logic_vector(6 downto 0) :=(others =>'0');
signal		segm_out    : character;


begin

	DUT: entity work.Display_7seg
		port map(
		segm_in	 => segm_in	,
		segm_out => segm_out);
	
	
	process
	begin
	segm_in <= "0111111";
	wait for 10 ns;
	segm_in <= "0000110";
	wait for 10 ns;
	segm_in <= "1011011";
	wait for 10 ns;
	segm_in <= "1001111";
	wait for 10 ns;
	segm_in <= "1100110";
	wait for 10 ns;
	segm_in <= "1101101";
	wait for 10 ns;
	segm_in <= "1111101";
	wait for 10 ns;
	segm_in <= "0000111";
	wait for 10 ns;
	segm_in <= "1111111";
	wait for 10 ns;
	segm_in <= "1101111";
	wait for 10 ns;
	segm_in <= "1110111";
	wait for 10 ns;
	segm_in <= "0000000";
	wait for 10 ns;
	end process;




end architecture;