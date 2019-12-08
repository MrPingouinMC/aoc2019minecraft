
say Advent of code 2019 day 8 part 1 : 
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

execute store result score SIZE REG run data get storage io line
function aoc:sol_2019/day8/read_layers


#scoreboard players operation SOL REG = R REG
function aoc:io/print_sol_score
function aoc:util/timer_end