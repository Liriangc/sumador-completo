
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sumadormedio is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Suma : out  STD_LOGIC);
end sumadormedio;

architecture Behavioral of sumadormedio is

begin

     suma <= a xor b;
	  Cout <= a and b;


end Behavioral;

