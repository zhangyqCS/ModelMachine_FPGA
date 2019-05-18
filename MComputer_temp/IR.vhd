LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--指令寄存器和指令译码器
--暂存指令和对指令码译码

ENTITY IR IS
PORT(
	DATA_IN: IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入的指令码
   IIR: IN STD_LOGIC; --IR允许输入信号
   CLK: IN STD_LOGIC; --时钟信号
   LD,ADD,HALT: OUT STD_LOGIC --输出的译码结果
);
END IR;

ARCHITECTURE A OF IR IS
SIGNAL RES_TEMP: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
  PROCESS(CLK,IIR)
  BEGIN
	IF(CLK'EVENT AND CLK='1')THEN --CLK上升沿到来时
		IF(IIR='0')THEN 
		RES_TEMP <= DATA_IN; --IIR=0时将DATA_IN赋值给RES_TEMP
		END IF;
	END IF;
  END PROCESS;
  PROCESS(CLK,RES_TEMP)
  BEGIN
	CASE RES_TEMP IS  --对RES_TEMP进行译码
		WHEN"00111110"=> LD <='1'; ADD <='0'; HALT<='0';
		WHEN"11000110"=> LD <='0'; ADD <='1'; HALT<='0';
		WHEN"01110110"=> LD <='0'; ADD <='0'; HALT<='1';
		WHEN OTHERS=>LD <='0'; ADD <='0'; HALT<='0';
	END CASE;
  END PROCESS;
END A;
