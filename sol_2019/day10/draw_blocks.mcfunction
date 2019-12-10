
function aoc:io/readpopline

execute store result score ROW REG run data get storage io line
scoreboard players operation PSIZE2 REG = ROW REG
function aoc:sol_2019/day10/draw_row

tp -30 ~ ~1
scoreboard players remove LINES REG 1
execute at @s if score LINES REG matches 1.. run function aoc:sol_2019/day10/draw_blocks