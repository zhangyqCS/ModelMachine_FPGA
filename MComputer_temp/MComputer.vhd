LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL,IEEE.NUMERIC_STD.ALL;
USE WORK.MCOMPUTER_DEF.ALL;

ENTITY MComputer IS
PORT( clock : IN STD_LOGIC;
      reset : IN STD_LOGIC;
	  mode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);       
	  mem_addr : IN UNSIGNED(word_w-op_w-3 DOWNTO 0);
	  output : OUT STD_LOGIC_VECTOR(word_w-1 DOWNTO 0); 	
	  data_r_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
	  reg_out : OUT STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);
	  regg_out: OUT STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);
	  op_out : OUT STD_LOGIC_VECTOR(op_w-1 DOWNTO 0);
	  add_r_out : OUT UNSIGNED(4 DOWNTO 0) );	         
END ENTITY;
ARCHITECTURE rtl OF MComputer IS	
TYPE mem_array IS ARRAY (0 TO 2**(word_w-op_w-2)-1) OF STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);
	SIGNAL mem : mem_array;
	CONSTANT prog : mem_array:=(
	0=>op2slv(load)&STD_LOGIC_VECTOR(TO_UNSIGNED(7,word_w-op_w-2))&"00",
	1=> op2slv(sta) & "001"&"01",
	2=>op2slv(add)&STD_LOGIC_VECTOR(TO_UNSIGNED(6,word_w-op_w-2))& "00",
	3=> op2slv(sub) & "001" & "01",
	4=> op2slv(sta) & "010"& "10",
	   --5=> op2slv(and1) & "010" & "10",
	5=op2slv(jmp1)&STD_LOGIC_VECTOR(TO_UNSIGNED(6,word_w-op_w-2))& "00",
   6=> STD_LOGIC_VECTOR(TO_UNSIGNED(2,word_w)),
   7=> STD_LOGIC_VECTOR(TO_UNSIGNED(3,word_w)));                          
	TYPE microcode_array IS ARRAY (0 TO 20) OF STD_LOGIC_VECTOR(23 DOWNTO 0);
	CONSTANT code : microcode_array:=(
		0=> "000000001001010000000001",
		1=> "000000000000000110000010",
		2=> "000000000110000000000011",
		3=> "000000000001001000011111",	
		4=> "000000010010000000000000",
		5=> "000100000000000000000000",
		6=> "100000000000000000000111",
		7=> "000010000001000000001111",
		8=> "000000000000000110000100",
		9=> "010000000000000000011110",
		10=> "000000000000000110010000",	
		11=> "000001000000100000100000",
		12=> "000010000001000000010001",
		13=> "000000000000000110011100",
		14=> "000000000000000000000000",
		15=> "000000000000000100000000", 
		16=> "000000000010100001000000",
		17=> "000000000000000110010010",
		18=> "001000000010100000000000",
		19=> "000000100010000000000000",
      20=> "000000000000000000000000"
);		
	SIGNAL count : UNSIGNED(word_w-op_w-1 DOWNTO 0);
	SIGNAL op : STD_LOGIC_VECTOR(op_w-1 DOWNTO 0);		
	SIGNAL z_flag : STD_LOGIC;                          
	SIGNAL mdr_out : STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);   
	SIGNAL mar_out : UNSIGNED(word_w-op_w-3 DOWNTO 0);       
	SIGNAL IR_out : STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);    
	SIGNAL acc_out : UNSIGNED(word_w-1 DOWNTO 0);  
	SIGNAL reg1_out : STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);   
	SIGNAL reg2_out : STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);      
	SIGNAL sysbus_out : STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);  
BEGIN		
	PROCESS(reset,clock)
		VARIABLE instr_reg : STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);	
		VARIABLE acc : UNSIGNED(word_w-1 DOWNTO 0);
		CONSTANT zero : UNSIGNED(word_w-1 DOWNTO 0):=(OTHERS =>'0');		
		VARIABLE mdr : STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);
		VARIABLE reg1 : STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);
       VARIABLE reg2 : STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);
		VARIABLE mar : UNSIGNED(word_w-op_w-3 DOWNTO 0);
		VARIABLE sysbus : STD_LOGIC_VECTOR(word_w-1 DOWNTO 0);			
		VARIABLE microcode : microcode_array;
		VARIABLE add_r : UNSIGNED(4 DOWNTO 0);	
    	VARIABLE data_r : STD_LOGIC_VECTOR(23 DOWNTO 0);
		VARIABLE temp: STD_LOGIC_VECTOR(4 DOWNTO 0);
	BEGIN		
	     reg2:="00000111";
		IF reset='0' THEN
			add_r:=(OTHERS =>'0');			         
			count <= (OTHERS =>'0');
			instr_reg := (OTHERS =>'0');
			acc := (OTHERS =>'0');
			mdr := (OTHERS =>'0');
			reg1 := (OTHERS =>'0');
           reg2 := (OTHERS =>'0');
			mar := (OTHERS =>'0');
			z_flag <='0';
			mem <= prog;
			sysbus :=(OTHERS =>'0');		
		ELSIF RISING_EDGE(clock) THEN			
			--microprogram controller	
			data_r  := code(TO_INTEGER(add_r));				
			IF data_r(4 DOWNTO 0)="11111" THEN --判断下地址
			    temp:="01" & op(2 DOWNTO 0);
				add_r := UNSIGNED(temp);
			ELSIF data_r(4 DOWNTO 0)="11110"  THEN
			    IF IR_out(1 downto 0)="10" THEN
			       add_r :="00110";
                            ELSIF IR_out(1 downto 0)="01" THEN
                               add_r :="00101";
			    END IF;
			ELSIF  data_r(4 DOWNTO 0)="11100"  THEN 
               IF z_flag='0' THEN
					add_r:="10011";
				ELSE
					add_r :="10100";
				END IF;
			ELSE
				add_r := UNSIGNED(data_r(4 DOWNTO 0));
			END IF;			
			data_r_out <=data_r;
			add_r_out <= add_r;
		    --PC
			IF data_r(15)='1' THEN     --PC_bus='1'
				sysbus := rfill & STD_LOGIC_VECTOR(count);
			END IF;		
			IF data_r(17)='1' THEN     --load_PC='1'
				count <= UNSIGNED(mdr(word_w-op_w-1 DOWNTO 0));
			ELSIF data_r(10)='1' THEN    --INC_PC='1'
				count <= count+1;					
			ELSE 
				count <= count;
			END IF;				
			--IR
			IF data_r(14)='1' THEN   --load_IR
				instr_reg := mdr;				
			END IF;
			IF data_r(9)='1' THEN    --Addr_bus='1'
				  sysbus :="00"&rfill& instr_reg(word_w-op_w-1 DOWNTO 2) ;
			END IF;	
			op <= instr_reg(word_w-1 DOWNTO word_w-op_w);			
			IR_out <= instr_reg;
			op_out <=op;
			--ALU
			IF data_r(16)='1' THEN    --load_ACC='1'				
				acc:=UNSIGNED(mdr);
		        ENd if;
			IF data_r(22)='1' THEN  --ACC_bus='1'
				sysbus := STD_LOGIC_VECTOR(acc);
			END IF;
			IF data_r(18)='1' THEN  --REG1_bus='1'
				sysbus := STD_LOGIC_VECTOR(reg1);
			END IF;
            IF data_r(19)='1' THEN  --REG2_bus='1'
				sysbus := STD_LOGIC_VECTOR(reg2);
			END IF;	
		        If  data_r(20)='1' then  --load_reg1='1'
			    reg1:=sysbus; 
			    reg_out<=reg1;  
			END IF;
           IF IR_out(1 downto 0)="00" THEN
			   IF data_r(11)='1' THEN  --ALU_ACC='1'
				IF data_r(6)='1' THEN   --ALU_add='1'
					acc := acc + UNSIGNED(mdr);
				END IF;
			    END IF;
			ELSIF IR_out(1 downto 0)="01"THEN
				IF data_r(11)='1' THEN  --ALU_ACC='1'
					IF data_r(5)='1' THEN   --ALU_sub='1'
					acc := acc - UNSIGNED(reg1_out);
			                END IF;
			          END IF;
                       ELSIF IR_out(1 downto 0)="10"THEN
                             IF data_r(11)='1' THEN  --ALU_ACC='1'
					IF data_r(21)='1' THEN   --ALU_and='1'
					acc := acc and UNSIGNED(mdr);
			         END IF;
			    END IF;
                       END IF;
                      IF acc=zero THEN
				z_flag <='1';
			ELSE
				z_flag <='0';
			END IF;
			acc_out<=acc;
			--RAM
			IF data_r(12)='1' THEN  --load_MAR='1'
				mar := UNSIGNED(sysbus(word_w-op_w-3 dOWNTO 0));
			ELSIF data_r(23)='1' THEN   --load_MDR='1'
		        mdr := sysbus;
			ELSIF data_r(8)='1' THEN   --CS='1'
				IF data_r(7)='1' THEN      --R_NW='1'
					mdr := mem(TO_INTEGER(mar));					
				ELSE
					mem(TO_INTEGER(mar))<=mdr;
				END IF;		
           END IF;
	        IF data_r(13)='1' THEN   --MDR_bus='1'
				sysbus:=mdr;
			END IF;
			mdr_out <= mdr;
			mar_out <= mar;	
		END IF;	
		   sysbus_out <=sysbus;
			reg1_out <= reg1;
			reg2_out <= reg2;
			regg_out <=reg2_out;
    END PROCESS;
	PROCESS(mode,mem_addr)                            
	BEGIN    
		--mode=0 -> sysbus  
		--mode=1 -> PC
		--mode=2 -> result of ALU
		--mode=3 -> IR
		--mode=4 -> MAR
		--mode=5 -> MDR
		--mode=6 -> mem                                         		
		output <= (OTHERS =>'0');		
		CASE mode is                    
		WHEN "000" =>  output<=sysbus_out;
		WHEN "001" =>                   
			output(word_w-op_w-1DOWNTO 0)<= STD_LOGIC_VECTOR(count);	        WHEN "010" =>output <= STD_LOGIC_VECTOR(acc_out);
		      WHEN "011" =>utput <= IR_out;	
		      WHEN "100" =>
	     output(word_w-op_w-3DOWNTO0)<=STD_LOGIC_VECTOR(mar_out);
		WHEN "101" =>output <= mdr_out;	
		WHEN "110" =>output <= mem(TO_INTEGER(mem_addr));	
		WHEN others =>output <= (OTHERS =>'Z');	
		END CASE;			 									
	END PROCESS;	
END ARCHITECTURE;		
