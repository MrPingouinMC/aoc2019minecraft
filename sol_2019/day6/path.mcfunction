
scoreboard players operation TARGET REG = @s CHILD
scoreboard players operation @s PATH = DIST REG
scoreboard players add DIST REG 1
execute as @e[tag=planet] if score TARGET REG = @s ID run function aoc:sol_2019/day6/path
tag @s add visited