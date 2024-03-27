library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sumador is
 Port
     ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out STD_LOGIC;
           suma : out  STD_LOGIC);
end sumador;

architecture Behavioral of sumador is

begin
     suma <=( a xor b)xor cin;
	  cout <=( a and b) or (( a xor b) and cin);



end Behavioral;

