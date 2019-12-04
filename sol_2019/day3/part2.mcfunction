#Load input in io storage
say Advent of code 2019 day 3 part 2 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day3 data
#data modify storage minecraft:io lines set from storage minecraft:test data

scoreboard players set PART REG 2

scoreboard players set INDEX REG 0

scoreboard players set POSX REG 0
scoreboard players set POSY REG 0

scoreboard players set MIN REG 99999999
scoreboard players set MIN2 REG 99999999

scoreboard players set WIRE1 REG 0
scoreboard players set WIRE2 REG 0

data modify storage minecraft:proc arr set value [{x:0,y:0,p:0}]

#The input only has one line
function aoc:io/readpopline


say Register wire 1
function aoc:sol_2019/day3/convertpart2

scoreboard players set POSX REG 0
scoreboard players set POSY REG 0


say Find crossing path
scoreboard players set INDEX REG 0
execute store result score LEN REG run data get storage minecraft:proc arr
#Check if it cross path with the first one
function aoc:io/readpopline
function aoc:sol_2019/day3/convert2

#execute store result score SOL REG run data get storage minecraft:proc arr[0]
scoreboard players operation SOL REG = MIN2 REG


function aoc:io/print_sol_score
function aoc:util/timer_end