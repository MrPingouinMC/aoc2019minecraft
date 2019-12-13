
#tellraw @a ["m1", {"nbt":"bintm1","storage":"proc"}]
#tellraw @a ["m2", {"nbt":"bintm2","storage":"proc"}]

data modify storage proc bintmr set value [0]
#data modify storage proc bintm1 set value [667,11]
#data modify storage proc bintm2 set value [971,6]


data modify storage proc bint1 set value [0]
scoreboard players set I1 REG 0
scoreboard players set I2 REG 0
execute store result score SIZE1 REG run data get storage proc bintm1
execute store result score SIZE2 REG run data get storage proc bintm2
#data modify storage proc bint2 set value [0]


function aoc:proc/bigintmultrec

#tellraw @a ["result", {"nbt":"bintmr","storage":"proc"}]

function aoc:proc/bigintnorm

#tellraw @a ["result norm", {"nbt":"bintmr","storage":"proc"}]

