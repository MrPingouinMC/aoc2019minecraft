scoreboard players set INDEX REG 0


data modify storage minecraft:proc arr set from storage minecraft:proc arr2
scoreboard players set INDEX REG 0

execute store result storage minecraft:proc arr[1] int 1 run scoreboard players get X REG
execute store result storage minecraft:proc arr[2] int 1 run scoreboard players get Y REG

tellraw @a ["XY", {"score":{"objective":"REG","name":"X"}}, " ", {"score":{"objective":"REG","name":"Y"}}] 


function aoc:sol_2019/day2/loop


scoreboard players operation SHIFT REG = INDEX REG
function aoc:sol_2019/day2/shift_back


execute store result score V REG run data get storage minecraft:proc arr[0]

execute unless score V REG = TARGET REG run scoreboard players add X REG 1
execute unless score V REG = TARGET REG if score X REG matches 100.. run scoreboard players add Y REG 1
execute unless score V REG = TARGET REG if score X REG matches 100.. run scoreboard players set X REG 0
execute unless score V REG = TARGET REG if score Y REG matches 0..99 run function aoc:sol_2019/day2/loop_search

