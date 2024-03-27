
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sumador_completo is
    Port ( ENT1 : in  STD_LOGIC_VECTOR (3 downto 0);
           ENT2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Carry : out  STD_LOGIC;
           Result : out  STD_LOGIC_VECTOR (3 downto 0));
end sumador_completo;

architecture Behavioral of sumador_completo is

  COMPONENT sumadormedio 
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Suma : out  STD_LOGIC);
  end COMPONENT;
  
  COMPONENT sumador 
 Port
     ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out STD_LOGIC;
           suma : out  STD_LOGIC);
end COMPONENT;

signal c1,c2,c3 : STD_LOGIC; 

begin
  inst_sumadormedio:sumadormedio Port Map(
    a => ent1(0) , 
    b => ent2(0), 
    Cout => c1, 
    Suma => result (0)
    );
	 
 inst_sumador1:sumador Port Map(
    cin =>c1,
    a => ent1(1) , 
    b => ent2(1), 
    Cout => c2, 
    Suma => result (1)
    );

 inst_sumador2:sumador Port Map(
    cin =>c2,
    a => ent1(2) , 
    b => ent2(2), 
    Cout => c3, 
    Suma => result(2)
    );
	 
 inst_sumador3:sumador Port Map(
    cin =>c3,
    a => ent1(3) , 
    b => ent2(3), 
    Cout => carry, 
    Suma => result(3)
    );
	 
end Behavioral;

