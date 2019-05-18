LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY CTRL IS
PORT(
	LD,ADD,HALT: IN STD_LOGIC;
   CLK: IN STD_LOGIC;
   T0,T1,T2,T3,T4,T5,T6,T7:IN STD_LOGIC;            
	IPC,IMAR,IDR,EDR,IA,EA,ISUM,ESUM,IIR: OUT STD_LOGIC
);
END ENTITY;

ARCHITECTURE A OF CTRL IS
BEGIN
  PROCESS(LD,ADD,HALT)
  BEGIN
   IF (HALT='1') THEN
     IPC <= '0';
     ESUM <= '0';
   ELSE
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
