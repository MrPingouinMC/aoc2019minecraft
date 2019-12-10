
function aoc:io/read_charint
function aoc:io/popchar


scoreboard players operation COLOR REG = RCHAR REG

execute if score COLOR REG matches 0 run scoreboard players add ZERO REG 1
execute if score COLOR REG matches 1 run scoreboard players add ONE REG 1
execute if score COLOR REG matches 2 run scoreboard players add TWO REG 1

scoreboard players add X REG 1
execute if score X REG >= W REG run scoreboard players add Y REG 1
execute if score X REG >= W REG run scoreboard players set X REG 0
execute if score Y REG >= H REG run function aoc:sol_2019/day8/update_sol
execute if score Y REG >= H REG run scoreboard players add LAYER REG 1
execute if score Y REG >= H REG run scoreboard players set Y REG 0

#This speed up things by a lot. Storage to get the size is slow.
scoreboard players remove SIZE REG 1
#execute store result score SIZE REG run data get storage io line
execute if score SIZE REG matches 1.. run function aoc:sol_2019/day8/read_layers