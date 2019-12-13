data modify storage proc bintr append value 0
scoreboard players operation V REG = RET REG
scoreboard players operation V REG %= BINT CONST
execute store result storage proc bintr[-1] int 1 run scoreboard players get V REG

scoreboard players operation RET REG /= BINT CONST
execute if score RET REG matches 1.. run function aoc:proc/pushret