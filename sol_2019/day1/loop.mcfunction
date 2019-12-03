

function aoc:io/readpopline

scoreboard players set RINT REG 0
function aoc:io/read_int


scoreboard players operation MASS REG = RINT REG
scoreboard players operation MASS REG /= 3 CONST
scoreboard players operation MASS REG -= 2 CONST


scoreboard players operation SUM REG += MASS REG


execute store result score SIZE REG run data get storage io lines
execute if score SIZE REG matches 1.. run function aoc:sol_2019/day1/loop
