#Load input in io storage
scoreboard players set PART REG 2
say Advent of code 2019 day 4 part 1 and 2 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day4 data
#data modify storage minecraft:io lines set from storage minecraft:test data

scoreboard players set COUNT REG 0
scoreboard players set COUNT2 REG 0



#The input only has one line
function aoc:io/readpopline

scoreboard players set RINT REG 0
function aoc:io/read_int
scoreboard players operation PASS REG = RINT REG



function aoc:io/pop_char

scoreboard players set RINT REG 0
function aoc:io/read_int
scoreboard players operation END REG = RINT REG

function aoc:sol_2019/day4/loop

scoreboard players operation SOL REG = COUNT REG
function aoc:io/print_sol_score

scoreboard players operation SOL REG = COUNT2 REG
function aoc:io/print_sol_score
function aoc:util/timer_end