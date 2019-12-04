scoreboard players operation RDY REG = INY REG
scoreboard players operation RDY REG -= LAST_POSY REG
execute if score RDY REG matches ..-1 run scoreboard players operation RDY REG *= -1 CONST
scoreboard players operation RDX REG = INX REG
scoreboard players operation RDX REG -= X1 REG
execute if score RDX REG matches ..-1 run scoreboard players operation RDX REG *= -1 CONST


scoreboard players operation RD REG = WIRE1 REG
scoreboard players operation RD REG += WIRE2 REG
scoreboard players operation RD REG += RDX REG
scoreboard players operation RD REG += RDY REG
execute if score RD REG < MIN2 REG run scoreboard players operation MIN2 REG = RD REG

