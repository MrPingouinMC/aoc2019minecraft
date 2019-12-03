#execute if score SHIFTV REG matches 0 run say 0 index error


data modify storage minecraft:proc cp set from storage minecraft:proc arr
scoreboard players operation SHIFTV REG = SHIFT REG
scoreboard players operation SHIFT REG -= INDEX REG
execute if score SHIFT REG matches ..-1 run scoreboard players operation SHIFT REG += LEN REG
execute unless score SHIFT REG matches 0 run function aoc:sol_2019/day2/shift

execute store result score R REG run data get storage minecraft:proc arr[0]

data modify storage minecraft:proc arr set from storage minecraft:proc cp

#scoreboard players operation SHIFT REG = SHIFTV REG
#scoreboard players operation SHIFT REG -= INDEX REG
#execute if score SHIFT REG matches ..-1 run scoreboard players operation SHIFT REG += LEN REG
#execute unless score SHIFT REG matches 0 run function aoc:sol_2019/day2/shift_back