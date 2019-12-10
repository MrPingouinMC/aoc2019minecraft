
#function aoc:io/readpopline

function aoc:io/read_charspecial
execute if score RINT REG matches 1 run setblock ~ ~ ~ pink_terracotta 
execute if score RINT REG matches 0 run setblock ~ ~ ~ gray_stained_glass

tp ~1 ~ ~
scoreboard players remove ROW REG 1
execute at @s if score ROW REG matches 1.. run function aoc:sol_2019/day10/draw_row