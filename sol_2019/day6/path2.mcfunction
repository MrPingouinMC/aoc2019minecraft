
scoreboard players operation TARGET REG = @s CHILD
scoreboard players add DIST REG 1
execute if score DIST REG matches 1.. if entity @s[tag=start] run say YEAH RIGHT
execute if entity @s[tag=visited] run scoreboard players operation DIST REG += @s PATH
execute unless entity @s[tag=visited] as @e[tag=planet] if score TARGET REG = @s ID run function aoc:sol_2019/day6/path2