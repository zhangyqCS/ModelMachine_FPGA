LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY IR IS
PORT(
	DATA_IN: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
   IIR: IN STD_LOGIC;
   CLK: IN STD_LOGIC;
   LD,ADD,HALT: OUT STD_LOGIC
);
END IR;

ARCHITECTURE A OF IR IS
SIGNAL REGQ: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
  PROCESS(CLK,IIR)
  BEGIN
	IF(CLK'EVENT AND CLK='1')THEN
		IF(IIR='0')THEN
		REGQ <= DATA_IN;
		END IF;
	END IF;
  END PROCESS;
  PROCESS(CLK,REGQ)
  BEGIN
	CASE REGQ IS 
		WHEN"00111110"=> LD <='1'; ADD <='0'; HALT<='0';
		WHEN"11000110"=> LD <='0'; ADD <='1'; HALT<='0';
		WHEN"01110110"=> LD <='0'; ADD <='0'; HALT<='1';
		WHEN OTHERS=>LD <='0'; ADD <='0'; HALT<='0';
	END CASE;
  END PROCESS;
END A;
