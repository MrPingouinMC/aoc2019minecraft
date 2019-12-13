#tellraw @a ["norm r", {"nbt":"bintr","storage":"proc"}]
#tellraw @a ["ret", {"score":{"objective":"REG","name":"RET"}}]
execute store result score V REG run data get storage proc bintv[0]
scoreboard players operation V REG += RET REG
scoreboard players operation RET REG = V REG
scoreboard players operation V REG %= BINT CONST
scoreboard players operation RET REG /= BINT CONST

data remove storage proc bintv[0]

data modify storage proc bintr append value 0
execute store result storage proc bintr[-1] int 1 run scoreboard players get V REG

execute store result score SIZE REG run data get storage proc bintv
execute if score SIZE REG matches 1.. run function aoc:proc/bigintnormrec
