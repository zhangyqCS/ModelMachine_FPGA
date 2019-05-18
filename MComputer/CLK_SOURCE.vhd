LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CLK_SOURCE IS
PORT(
	CLK_50M:IN STD_LOGIC;
   CLK:OUT STD_LOGIC
);
END ENTITY;

ARCHITECTURE A OF CLK_SOURCE IS
SIGNAL COUNT:INTEGER RANGE 0 TO 1;
SIGNAL CLK_TEMP:STD_LOGIC:='0';
BEGIN
  PROCESS(CLK_50M)
  BEGIN 
  IF RISING_EDGE(CLK_50M) THEN
		IF(COUNT >= 1)THEN
			COUNT <= 0;
			CLK_TEMP <= NOT CLK_TEMP;
		ELSE
			COUNT <= COUNT +1;
		END IF;
  END IF;
  END PROCESS;
  CLK <= CLK_TEMP;
END A;