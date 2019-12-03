scoreboard players operation MASS REG /= 3 CONST
scoreboard players operation MASS REG -= 2 CONST
execute if score MASS REG matches 1.. run scoreboard players operation SUM REG += MASS REG

execute if score MASS REG matches 1.. run function aoc:sol_2019/day1/calc


