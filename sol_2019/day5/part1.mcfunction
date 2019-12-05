
#Load input in io storage
say Advent of code 2019 day 5 part 1 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day5 data

#The input only has one line
function aoc:io/readpopline

scoreboard players set POINTER REG 0


kill @e[tag=pointer]
fill 10 0 10 10 255 10 red_concrete
summon armor_stand 10 0 10 {NoGravity:1b,Tags:[pointer],Marker:0b}
execute as @e[tag=pointer] run function aoc:sol_2019/day5/convert


execute store result score LEN REG run data get storage proc arr


scoreboard players set POINTER REG 0
scoreboard players set OUT REG -1
scoreboard players set INPUT REG 1
execute as @e[tag=pointer] run function aoc:sol_2019/day5/loop


scoreboard players operation SOL REG = OUT REG
function aoc:io/print_sol_score
function aoc:util/timer_end