

scoreboard players set NB REG 0
scoreboard players set NB1 REG 0
scoreboard players set NB2 REG 0

execute if score BINT1_SIZE REG > SIZE REG store result score NB1 REG run data get storage minecraft:proc bint1[0]
execute if score BINT2_SIZE REG > SIZE REG store result score NB2 REG run data get storage minecraft:proc bint2[0]

scoreboard players operation NB REG += NB1 REG
scoreboard players operation NB REG += NB2 REG

data modify storage minecraft:proc bintr append value 0
execute store result storage proc bintr[-1] int 1 run scoreboard players get NB REG

scoreboard players add SIZE REG 1
scoreboard players set CONTINUE REG 0

#execute if score BINT1_SIZE REG > SIZE REG run data modify storage minecraft:proc bint1 append from storage minecraft:proc bint1[0]
execute if score BINT1_SIZE REG > SIZE REG run data remove storage minecraft:proc bint1[0]

#execute if score BINT2_SIZE REG > SIZE REG run data modify storage minecraft:proc bint2 append from storage minecraft:proc bint2[0]
execute if score BINT2_SIZE REG > SIZE REG run data remove storage minecraft:proc bint2[0]

execute if score SIZE REG < BINT1_SIZE REG run scoreboard players add CONTINUE REG 1
execute if score SIZE REG < BINT2_SIZE REG run scoreboard players add CONTINUE REG 1

execute if score CONTINUE REG matches 1.. run function aoc:proc/bigintaddrec