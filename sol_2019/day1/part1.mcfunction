#Load input in io storage
say Advent of code 2019 day 1 part 1 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day1 data

scoreboard players set SUM REG 0

function aoc:sol_2019/day1/loop

scoreboard players operation SOL REG = SUM REG
function aoc:io/print_sol_score
function aoc:util/timer_end