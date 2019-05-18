LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--数据寄存器
--暂时存放指令码

ENTITY DR IS
PORT(
	DATA_IN: IN STD_LOGIC_VECTOR(7 DOWNTO 0); --输入的指令码
   IDR: IN STD_LOGIC; --DR允许写入信号
   EDR: IN STD_LOGIC; --DR允许输出信号
   CLK: IN STD_LOGIC; --时钟信号
   DATA_OUT: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) --DR的指令码输出信号
);
END;

ARCHITECTURE A OF DR IS
SIGNAL REGQ:STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
  PROCESS(CLK,IDR,EDR)
  BEGIN
	IF(CLK'EVENT AND CLK='1') THEN --CLK上升沿到来时
		IF(IDR='1') THEN --IDR=1时允许写入
			REGQ <= DATA_IN;
		END IF;
	END IF;
  END PROCESS;
  DATA_OUT <= REGQ WHEN EDR='0' ELSE "ZZZZZZZZ"; --EDR=0时允许输出，否则结果为高阻态
END A;
