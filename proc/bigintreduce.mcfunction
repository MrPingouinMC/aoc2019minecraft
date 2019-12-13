
data modify storage proc bintr set value []
scoreboard players operation BASE REG = BINT REG
scoreboard players remove BASE REG 1
execute store result score NB REG run data get storage proc bintv[0]
function aoc:proc/bigintreduce_loop