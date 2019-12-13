scoreboard players set HASH REG 1
scoreboard players set HASH2 REG 3
execute as @e[tag=moon] run function aoc:sol_2019/day12/hash
#tellraw @a ["hash ", {"score":{"objective":"REG","name":"HASH"}}]
function aoc:sol_2019/day12/hash_move


execute at @s if block ~ ~ ~ jukebox run scoreboard players set COLIDE REG 1

execute at @s if score COLIDE REG matches 0 run setblock ~ ~ ~ jukebox{RecordItem:{id:"pufferfish",Count:1,tag:{arr:[]}}}

execute at @s if score COLIDE REG matches 1 store result score SIZE REG run data get block ~ ~ ~ RecordItem.tag.arr
execute at @s if score COLIDE REG matches 1 run function aoc:sol_2019/day12/hash_check

execute at @s if score COLIDE REG matches 1 run execute store result score ITER2 REG run data get block ~ ~ ~ RecordItem.tag.arr[0][0]
execute if score COLIDE REG matches 1 run scoreboard players operation PERIOD REG = ITER REG
execute if score COLIDE REG matches 1 run scoreboard players operation PERIOD REG -= ITER2 REG
execute if score COLIDE REG matches 1 if score AXIS REG matches 0 run scoreboard players operation PERIOD1 REG = PERIOD REG
execute if score COLIDE REG matches 1 if score AXIS REG matches 1 run scoreboard players operation PERIOD2 REG = PERIOD REG
execute if score COLIDE REG matches 1 if score AXIS REG matches 2 run scoreboard players operation PERIOD3 REG = PERIOD REG

execute if score COLIDE REG matches 1 run tellraw @a ["period ", {"score":{"objective":"REG","name":"PERIOD"}}, " ", {"score":{"objective":"REG","name":"ITER2"}}]

execute at @s run data modify block ~ ~ ~ RecordItem.tag.arr append value [0,0,0]
execute at @s store result block ~ ~ ~ RecordItem.tag.arr[-1][0] int 1 run scoreboard players get ITER REG
execute at @s store result block ~ ~ ~ RecordItem.tag.arr[-1][1] int 1 run scoreboard players get FULL_HASH REG
execute at @s store result block ~ ~ ~ RecordItem.tag.arr[-1][2] int 1 run scoreboard players get FULL_HASH2 REG
