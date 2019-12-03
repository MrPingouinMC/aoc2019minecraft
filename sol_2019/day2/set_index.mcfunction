
scoreboard players operation SHIFTV REG = SHIFT REG
scoreboard players operation SHIFT REG -= INDEX REG
execute if score SHIFT REG matches ..-1 run scoreboard players operation SHIFT REG += LEN REG
execute unless score SHIFT REG matches 0 run function aoc:sol_2019/day2/shift


execute store result storage minecraft:proc arr[0] int 1 run scoreboard players get V REG

scoreboard players operation SHIFT REG = SHIFTV REG
scoreboard players operation SHIFT REG -= INDEX REG
execute if score SHIFT REG matches ..-1 run scoreboard players operation SHIFT REG += LEN REG
execute unless score SHIFT REG matches 0 run function aoc:sol_2019/day2/shift_back