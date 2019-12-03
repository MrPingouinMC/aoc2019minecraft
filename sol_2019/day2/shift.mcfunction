
#Don't know if the shif is in the right direction
data modify storage minecraft:proc arr append from storage minecraft:proc arr[0]
data remove storage minecraft:proc arr[0]
scoreboard players remove SHIFT REG 1
execute if score SHIFT REG matches 1.. run function aoc:sol_2019/day2/shift