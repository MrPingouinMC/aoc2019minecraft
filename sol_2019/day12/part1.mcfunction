say Advent of code 2019 day 12 part 1 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day12 data
#data modify storage minecraft:io lines set from storage test data

scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy
scoreboard objectives add VX dummy
scoreboard objectives add VY dummy
scoreboard objectives add VZ dummy

scoreboard players set MAX REG 0
scoreboard players set MIN REG 0

scoreboard players set SOL REG 0
scoreboard players set ITERATIONS REG 1000

kill @e[tag=moon]

execute store result score LINES REG run data get storage io lines
function aoc:sol_2019/day12/parse

scoreboard players set ITER REG 0
function aoc:sol_2019/day12/iterations

function aoc:sol_2019/day12/result

function aoc:io/print_sol_score
function aoc:util/timer_end
kill @e[tag=moon]