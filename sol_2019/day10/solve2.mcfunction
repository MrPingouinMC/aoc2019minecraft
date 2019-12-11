scoreboard players operation N REG = PSIZE1 REG
execute if score N REG < PSIZE2 REG run scoreboard players operation N REG = PSIZE2 REG

scoreboard players set A REG 0
scoreboard players set B REG 1
scoreboard players set C REG 1
scoreboard players operation D REG = N REG


data modify storage mem farey set value [[0,1]]
function aoc:sol_2019/day10/fareygen

execute store result entity @s Pos[0] double 1 run scoreboard players get MAXX REG
execute store result entity @s Pos[2] double 1 run scoreboard players get MAXZ REG


scoreboard players set FOUND REG 0
scoreboard players set CONTINUE REG 1
scoreboard players set SIZE REG 0
scoreboard players set SWITCH REG 0
scoreboard players set SIGN REG 0
scoreboard players set DESTROY_COUNT REG 0
#data modify storage mem farey set value [[0, 1], [1, 17], [1, 16], [1, 15], [1,1]]  
execute store result score LEN REG run data get storage mem farey
scoreboard players remove LEN REG 1
execute as @e[tag=count] at @s run function aoc:sol_2019/day10/laser_destroy

scoreboard players add SOLX REG 30
scoreboard players add SOLZ REG 30


tellraw @a ["sol ", {"score":{"objective":"REG","name":"SOLX"}}]
tellraw @a ["sol ", {"score":{"objective":"REG","name":"SOLZ"}}]