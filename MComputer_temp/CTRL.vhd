LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

--操作控制器模块
--控制模型机正常运行

ENTITY CTRL IS
PORT(
	LD,ADD,HALT: IN STD_LOGIC; --输入的译码结果
   CLK: IN STD_LOGIC; --时钟信号
   T0,T1,T2,T3,T4,T5,T6,T7:IN STD_LOGIC; --输入的节拍信号            
	IPC,IMAR,IDR,EDR,IA,EA,ISUM,ESUM,IIR: OUT STD_LOGIC --输出的指令信号
);
END ENTITY;

ARCHITECTURE A OF CTRL IS
BEGIN
  PROCESS(LD,ADD,HALT)
  BEGIN
   IF (HALT='1') THEN --HALT=1时模型机停止工作
     IPC <= '0';
     ESUM <= '0';
   ELSE --由译码输入和节拍输入控制各个指令信号
     IMAR <= not(t0 or (t3 and ld)or (t3 and add));
     IIR <= not t2;
     IA <= not((t6 and ld)or(t6 and add ));
     IDR <= t1 or(t4 and ld) or (t4 and add);
     IPC <= t2 or (t5 and ld) or (t5 and add);
     ISUM <= not (t5 and add);
     ESUM <= not(t6 and add);
     EA <= not (t7 and add);
     EDR <= (t6 and add) or (t7 and add);
   END IF;
  END  PROCESS;
END A;
