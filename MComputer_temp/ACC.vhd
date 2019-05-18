LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--累加器模块

ENTITY ACC IS 
PORT(
	DATA_IN: IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入指令码
   IA: IN STD_LOGIC; --ACC允许输入信号
   EA: IN STD_LOGIC; --ACC允许输出信号
   CLK: IN STD_LOGIC; --时钟信号
   DATA_OUT: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) --输出指令码
);
END ACC;

ARCHITECTURE A OF ACC IS
SIGNAL RES_TEMP: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
  PROCESS(IA,EA,CLK)
  BEGIN
  IF(CLK'EVENT AND CLK='1') THEN --CLK时钟上升沿到来时
     IF(IA='0') THEN -- IA=0时输入
      RES_TEMP<=DATA_IN;
     END IF;
   END IF;
  END PROCESS;
  DATA_OUT<= RES_TEMP WHEN EA='0' ELSE "ZZZZZZZZ"; --EA=0时允许输出，否则输出为高阻态
 END A;