

scoreboard players operation MOD REG = NB REG
scoreboard players operation MOD REG %= 10 CONST

data modify storage proc bintr append value 0
execute store result storage proc bintr[-1] int 1 run scoreboard players get MOD REG

scoreboard players operation BASE REG /= 10 CONST
scoreboard players operation NB REG /= 10 CONST

execute if score BASE REG matches 0 run data remove storage proc bintv[0]
execute if score BASE REG matches 0 store result score NB REG run data get storage proc bintv[0]
execute if score BASE REG matches 0 run scoreboard players operation BASE REG = BINT REG
execute if score BASE REG = BINT REG run scoreboard players remove BASE REG 1

execute store result score SIZE REG run data get storage proc bintv
execute if score SIZE REG matches 1.. run function aoc:proc/bigintreduce_loop