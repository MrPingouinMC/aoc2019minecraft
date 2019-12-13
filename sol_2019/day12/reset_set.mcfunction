kill @e[tag=build]
summon minecraft:armor_stand 0 0 50 {NoGravity:1b,Tags:[build]}
execute as @e[tag=build] at @s run function aoc:sol_2019/day12/build
execute at @e[tag=build] run fill 0 ~-25 50 32 255 82 stone
kill @e[tag=build]