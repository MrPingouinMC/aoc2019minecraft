
function aoc:io/read_charint
function aoc:io/popchar


scoreboard players operation COLOR REG = RCHAR REG

execute if score COLOR REG matches 0 unless block ~ ~-1 ~ stone run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~
execute if score COLOR REG matches 0 if block ~ ~-1 ~ stone run setblock ~ ~ ~ minecraft:black_concrete
execute if score COLOR REG matches 1 unless block ~ ~-1 ~ stone run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~
execute if score COLOR REG matches 1 if block ~ ~-1 ~ stone run setblock ~ ~ ~ minecraft:white_concrete
execute if score COLOR REG matches 2 run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~

scoreboard players add X REG 1
tp ~1 ~ ~ 
execute if score X REG >= W REG run scoreboard players add Y REG 1
execute if score X REG >= W REG run tp 30 ~ ~1
execute if score X REG >= W REG run scoreboard players set X REG 0
execute if score Y REG >= H REG run scoreboard players add LAYER REG 1
execute if score Y REG >= H REG run tp 30 ~1 30
execute if score Y REG >= H REG run scoreboard players set Y REG 0

#This speed up things by a lot. Storage to get the size is slow.
scoreboard players remove SIZE REG 1
execute if score SIZE REG matches 1.. at @s run function aoc:sol_2019/day8/draw