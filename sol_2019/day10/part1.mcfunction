#Load input in io storage
say Advent of code 2019 day 10 part 1 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day10 data
#data modify storage minecraft:io lines set from storage test data

scoreboard players set MAX REG 0

scoreboard players set PSIZE1 REG 0
scoreboard players set PSIZE2 REG 0

kill @e[tag=draw]
summon armor_stand -30 10 -30 {NoGravity:1b,Marker:1b,Tags:["draw"]}

execute store result score LINES REG run data get storage io lines
scoreboard players operation PSIZE1 REG = LINES REG
execute as @e[tag=draw] at @s run function aoc:sol_2019/day10/draw_blocks



scoreboard players set P1 REG 1
scoreboard players set P2 REG 1

#TODO Handle cases [1,1] and [1,0], a non swapable case
data modify storage mem coprimes set value []
data modify storage mem modif set value [[1,1],[1,-1],[-1,1],[-1,-1]]
function aoc:sol_2019/day10/coprimes_pairs


kill @e[tag=count]
summon armor_stand -30 10 -30 {NoGravity:1b,Marker:1b,Tags:["count"]}
scoreboard players set X REG 0
scoreboard players set Z REG 0
execute as @e[tag=draw] at @s run tp -30 10 -30
execute as @e[tag=draw] at @s run function aoc:sol_2019/day10/solve

scoreboard players operation SOL REG = MAX REG
function aoc:io/print_sol_score
function aoc:util/timer_end
#kill @e[tag=draw]
#kill @e[tag=count]
