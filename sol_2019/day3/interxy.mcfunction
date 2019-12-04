
scoreboard players operation INX REG = X1 REG
scoreboard players operation INY REG = POSY REG

scoreboard players operation DY1 REG = Y1 REG
scoreboard players operation DY2 REG = Y2 REG
scoreboard players operation DY3 REG = Y1 REG


scoreboard players operation DY1 REG -= INY REG
scoreboard players operation DY2 REG -= INY REG
scoreboard players operation DY3 REG -= Y2 REG

execute if score DY1 REG matches ..-1 run scoreboard players operation DY1 REG *= -1 CONST
execute if score DY2 REG matches ..-1 run scoreboard players operation DY2 REG *= -1 CONST
execute if score DY3 REG matches ..-1 run scoreboard players operation DY3 REG *= -1 CONST

scoreboard players operation DY1 REG += DY2 REG


scoreboard players operation DX1 REG = POSX REG
scoreboard players operation DX2 REG = LAST_POSX REG
scoreboard players operation DX3 REG = POSX REG


scoreboard players operation DX1 REG -= INX REG
scoreboard players operation DX2 REG -= INX REG
scoreboard players operation DX3 REG -= LAST_POSX REG

execute if score DX1 REG matches ..-1 run scoreboard players operation DX1 REG *= -1 CONST
execute if score DX2 REG matches ..-1 run scoreboard players operation DX2 REG *= -1 CONST
execute if score DX3 REG matches ..-1 run scoreboard players operation DX3 REG *= -1 CONST

scoreboard players operation DX1 REG += DX2 REG


execute if score DY1 REG = DY3 REG if score DX1 REG = DX3 REG run scoreboard players set CROSS REG 1



execute if score CROSS REG matches 1 if score PART REG matches 2 run function aoc:sol_2019/day3/part2xy
