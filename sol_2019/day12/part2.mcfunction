say Advent of code 2019 day 12 part 2 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day12 data
#data modify storage minecraft:io lines set from storage test data

scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy
scoreboard objectives add VX dummy
scoreboard objectives add VY dummy
scoreboard objectives add VZ dummy
scoreboard objectives add HASH dummy
scoreboard objectives add HASH2 dummy

scoreboard players set SOL REG 0
#scoreboard players set ITERATIONS REG 1000

kill @e[tag=moon]

execute store result score LINES REG run data get storage io lines
function aoc:sol_2019/day12/parse

function aoc:sol_2019/day12/create_set

scoreboard players set COLIDE REG 0
scoreboard players set ITER REG 0
scoreboard players set AXIS REG 0
function aoc:sol_2019/day12/iterations2

function aoc:sol_2019/day12/result3

function aoc:io/print_sol_bigint
function aoc:util/timer_end
kill @e[tag=moon]
kill @e[tag=build]
#kill @e[tag=cursor]