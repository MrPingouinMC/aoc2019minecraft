
#Load input in io storage
say Advent of code 2019 day 7 part 2 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day7 data
#data modify storage minecraft:io lines set from storage test data

#The input only has one line
function aoc:io/readpopline

function aoc:j10y/init
function aoc:j10y/intcode/load


scoreboard players set COPY REG -1
scoreboard players set POINTER REG 0
execute as @e[tag=pointer] run function aoc:j10y/intcode/copy

scoreboard players set MAX REG -1000000000

scoreboard players set INDEX REG 0
data modify storage minecraft:mem phase set value [5,6,7,8,9]
data modify storage minecraft:mem phase_stack set value []
data modify storage minecraft:mem index_stack set value []


execute store result score SIZE REG run data get storage mem phase
execute as @e[tag=pointer] run function aoc:sol_2019/day7/solve2

say done
scoreboard players operation SOL REG = MAX REG

function aoc:io/print_sol_score
function aoc:util/timer_end

function aoc:j10y/destroy