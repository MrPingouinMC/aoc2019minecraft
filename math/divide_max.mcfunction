scoreboard players operation MOD REG = V REG
scoreboard players operation MOD REG %= C REG
execute if score MOD REG matches 0 run scoreboard players operation V REG /= C REG
execute if score MOD REG matches 0 run scoreboard players add COUNT REG 1

execute if score MOD REG matches 0 if score V REG matches 2.. run function aoc:math/divide_max