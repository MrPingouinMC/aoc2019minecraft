#Minecraft set implementation assuming a perfect hash function (for day 12, I can create ush perfect hash function)
forceload add 0 50 16 66
kill @e[tag=build]
summon minecraft:armor_stand 0 0 50 {NoGravity:1b,Tags:[build]}
execute as @e[tag=build] at @s run function aoc:sol_2019/day12/build
execute at @e[tag=build] run fill 0 ~-25 50 32 255 82 stone
kill @e[tag=build]

kill @e[tag=cursor]
summon minecraft:armor_stand 0 0 50 {NoGravity:1b,Tags:[cursor]}


scoreboard players set MOD REG 261101
scoreboard players set A REG 43
scoreboard players set B REG 19