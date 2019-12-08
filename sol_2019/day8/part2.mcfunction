
say Advent of code 2019 day 8 part 2 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day8 data


scoreboard players set SOLMIN REG 250
scoreboard players set SOL REG 0

scoreboard players set W REG 25
scoreboard players set H REG 6

scoreboard players set ZERO REG 0
scoreboard players set ONE REG 0
scoreboard players set TWO REG 0

scoreboard players set X REG 0
scoreboard players set Y REG 0
scoreboard players set LAYER REG 0

#The input only has one line
function aoc:io/readpopline
#The input only has one line


kill @e[tag=draw]
summon minecraft:armor_stand 30 1 30 {NoGravity:1b,Tags:[draw]}
fill 30 0 30 54 100 35 stone
execute store result score SIZE REG run data get storage io line
execute as @e[tag=draw] at @s run function aoc:sol_2019/day8/draw


#scoreboard players operation SOL REG = R REG
function aoc:io/print_sol_score
function aoc:util/timer_end
kill @e[tag=draw]