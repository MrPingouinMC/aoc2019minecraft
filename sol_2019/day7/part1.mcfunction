



#Load input in io storage
say Advent of code 2019 day 7 part 1 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day7 data
#data modify storage minecraft:io lines set from storage test data

#The input only has one line
function aoc:io/readpopline

function aoc:j10y/init
function aoc:j10y/intcode/load

execute as @e[tag=pointer] run function aoc:j10y/copy

scoreboard players set MAX REG -1000000000

#scoreboard players set SIGNAL REG 0
scoreboard players set INDEX REG 0
data modify storage minecraft:mem phase set value [0,1,2,3,4]
data modify storage minecraft:mem phase_stack set value []
data modify storage minecraft:mem index_stack set value []
data modify storage minecraft:mem signal_stack set value [0]


execute store result score SIZE REG run data get storage mem phase
execute as @e[tag=pointer] run function aoc:sol_2019/day7/solve


scoreboard players operation SOL REG = MAX REG

function aoc:io/print_sol_score
function aoc:util/timer_end

function aoc:j10y/destroy