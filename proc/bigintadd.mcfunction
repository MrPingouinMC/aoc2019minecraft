
#TODO FIX FOR SOUSTRACTION

#tellraw @a ["a1", {"nbt":"bint1","storage":"proc"}]
#tellraw @a ["a2", {"nbt":"bint2","storage":"proc"}]

data modify storage proc bintr set value []
execute store result score BINT1_SIZE REG run data get storage proc bint1
execute store result score BINT2_SIZE REG run data get storage proc bint2

scoreboard players set SIZE REG 0
function aoc:proc/bigintaddrec

#data modify storage minecraft:proc bint1 append from storage minecraft:proc bint1[0]
#data remove storage minecraft:proc bint1[0]

#data modify storage minecraft:proc bint2 append from storage minecraft:proc bint2[0]
#data remove storage minecraft:proc bint2[0]

execute store result score SIZE REG run data get storage proc bintr
scoreboard players set RET REG 0

data modify storage proc bintv set from storage proc bintr

function aoc:proc/bigintnorm
