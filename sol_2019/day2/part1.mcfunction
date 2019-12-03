#Load input in io storage
say Advent of code 2019 day 2 part 1 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day2 data

scoreboard players set INDEX REG 0

data modify storage minecraft:proc arr set value []
#The input only has one line
function aoc:io/readpopline

#Convert the input into a list of integer into proc.arr
function aoc:sol_2019/day2/convert


data modify storage minecraft:proc arr[1] set value 12
data modify storage minecraft:proc arr[2] set value 2
execute store result score LEN REG run data get storage proc arr


function aoc:sol_2019/day2/loop

#tellraw @a {"nbt":"arr","storage":"proc"}

scoreboard players operation SHIFT REG = INDEX REG
function aoc:sol_2019/day2/shift_back

#tellraw @a {"nbt":"arr","storage":"proc"}

execute store result score SOL REG run data get storage minecraft:proc arr[0]

#scoreboard players operation SOL REG = SUM REG
function aoc:io/print_sol_score
function aoc:util/timer_end