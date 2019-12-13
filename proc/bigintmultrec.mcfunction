data modify storage proc bint2 set value [0]

execute store result score V1 REG run data get storage proc bintm1[0]
execute store result score V2 REG run data get storage proc bintm2[0]
scoreboard players operation V1 REG *= V2 REG

execute store result storage proc bint2[0] int 1 run scoreboard players get V1 REG

scoreboard players operation SHIFT REG = I1 REG
scoreboard players operation SHIFT REG += I2 REG
execute if score SHIFT REG matches 1.. run function aoc:proc/bigintshift

data modify storage proc bint1 set from storage proc bintmr
function aoc:proc/bigintadd
data modify storage proc bintmr set from storage proc bintr

data modify storage proc bintm1 append from storage proc bintm1[0]
data remove storage proc bintm1[0]


scoreboard players add I1 REG 1
execute if score I1 REG >= SIZE1 REG run scoreboard players add I2 REG 1
execute if score I1 REG >= SIZE1 REG run data modify storage proc bintm2 append from storage proc bintm2[0]
execute if score I1 REG >= SIZE1 REG run data remove storage proc bintm2[0]
execute if score I1 REG >= SIZE1 REG run scoreboard players set I1 REG 0

execute if score I2 REG < SIZE2 REG run function aoc:proc/bigintmultrec