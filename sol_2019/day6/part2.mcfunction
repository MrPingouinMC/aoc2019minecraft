
#Load input in io storage
say Advent of code 2019 day 6 part 2 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day6 data
#data modify storage minecraft:io lines set from storage test data

scoreboard objectives add ID dummy
scoreboard objectives add CHILD dummy
scoreboard objectives add ORBITS dummy
scoreboard objectives add PATH dummy

kill @e[tag=planet]

#The input only has one line
function aoc:sol_2019/day6/register
#YOU ID = 140830    
#SAN ID = 115351    

scoreboard players set DIST REG -1
tag @e[tag=planet,scores={ID=140830}] add start
execute as @e[tag=planet,scores={ID=140830}] run function aoc:sol_2019/day6/path

scoreboard players set DIST REG -1
execute as @e[tag=planet,scores={ID=115351}] run function aoc:sol_2019/day6/path2

scoreboard players remove DIST REG 1
scoreboard players operation SOL REG = DIST REG
function aoc:io/print_sol_score
function aoc:util/timer_end

kill @e[tag=planet]