
execute store result score FACT2 REG run data get storage proc lcm[0][0]
execute if score FACT2 REG = FACT REG run scoreboard players set FOUND REG 1
execute if score FACT2 REG = FACT REG run scoreboard players set SIZE REG 0

execute if score FOUND REG matches 0 run data modify storage proc lcm append from storage proc lcm[0]
execute if score FOUND REG matches 0 run data remove storage proc lcm[0]

scoreboard players remove SIZE REG 1
execute if score SIZE REG matches 1.. run function aoc:math/lcm_update_value