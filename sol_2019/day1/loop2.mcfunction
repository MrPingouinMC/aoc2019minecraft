

function aoc:io/readpopline

scoreboard players set RINT REG 0
function aoc:io/read_int

scoreboard players operation MASS REG = RINT REG

function aoc:sol_2019/day1/calc

execute store result score SIZE REG run data get storage io lines
execute if score SIZE REG matches 1.. run function aoc:sol_2019/day1/loop2
