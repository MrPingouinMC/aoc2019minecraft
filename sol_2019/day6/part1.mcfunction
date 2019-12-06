
#Load input in io storage
say Advent of code 2019 day 6 part 1 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day6 data

#data modify storage minecraft:io lines set from storage test data

scoreboard objectives add ID dummy
scoreboard objectives add CHILD dummy
scoreboard objectives add ORBITS dummy

kill @e[tag=planet]

#The input only has one line
function aoc:sol_2019/day6/register

scoreboard players set COUNT REG 0

function aoc:sol_2019/day6/calc

scoreboard players operation COUNT REG += @e[tag=planet] ORBITS

scoreboard players operation SOL REG = COUNT REG
function aoc:io/print_sol_score
function aoc:util/timer_end

kill @e[tag=planet]