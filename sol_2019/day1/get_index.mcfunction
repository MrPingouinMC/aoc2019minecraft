execute if score SHIFTV REG matches 0 run say 0 index error

scoreboard players operation SHIFT REG = SHIFTV REG
#scoreboard players operation SHIFT REG -= INDEX REG
function aoc:sol_2019/day2/shift

tellraw @a ["SHIFT", {"score":{"objective":"REG","name":"SHIFTV"}}]
tellraw @a {"nbt":"arr","storage":"proc"}
execute store result score R REG run data get storage minecraft:proc arr[0]

scoreboard players operation SHIFT REG = SHIFTV REG
#scoreboard players operation SHIFT REG -= INDEX REG
function aoc:sol_2019/day2/shift_back