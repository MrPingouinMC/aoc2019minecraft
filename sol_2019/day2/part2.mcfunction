#Load input in io storage
say Advent of code 2019 day 2 part 1 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day2 data

#The input only has one line
function aoc:io/readpopline

data modify storage minecraft:proc arr set value []
#Convert the input into a list of integer into proc.arr
function aoc:sol_2019/day2/convert
data modify storage minecraft:proc arr2 set from storage minecraft:proc arr
execute store result score LEN REG run data get storage proc arr

scoreboard players set X REG 0
scoreboard players set Y REG 0
scoreboard players set TARGET REG 19690720

function aoc:sol_2019/day2/loop_search




scoreboard players operation X REG *= 100 CONST
scoreboard players operation X REG += Y REG

scoreboard players operation SOL REG = X REG


function aoc:io/print_sol_score
function aoc:util/timer_end