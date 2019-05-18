LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE MComputer_def IS
	TYPE opcode IS (load,sta, sub, add, and1, jmp1, nop);	
	CONSTANT word_w: NATURAL :=8;
	CONSTANT op_w: NATURAL :=3;
	CONSTANT rfill: STD_LOGIC_VECTOR(op_w-1 downto 0):=(others =>'0');
	--FUNCTIOn slv2op(slv:IN STD_LOGIC_VECTOR) RETURN opcode;
	FUNCTION op2slv(op:in opcode) RETURN STD_LOGIC_VECTOR;
END PACKAGE MComputer_def;

PACKAGE BODY MComputer_def IS
	TYPE  optable IS ARRAY(opcode) OF STD_LOGIC_VECTOR(op_w-1 DOWNTO 0);
	CONSTANT trans_table:optable :=("000", "001", "010", "011", "100", "101","110");
	FUNCTION op2slv(op:IN opcode) RETURN STD_LOGIC_VECTOR IS
	BEGIN
			RETURN trans_table(op);
	END FUNCTION op2slv;
	--function slv2op(slv:in std_logic_vector) return opcode is
	--	variable transop:opcode;
	--	begin
	--		for i in opcode loop
	--			if slv=trans_table(i) then
	--				transop:=i;
	--			end if;
	--		end loop;
	--		return transop;
	--end function slv2op;
END PACKAGE BODY MComputer_def;
