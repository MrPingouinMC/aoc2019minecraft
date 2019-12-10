#Load input in io storage
say Advent of code 2019 day 10 part 1 : 
function aoc:util/timer_start
data modify storage minecraft:io lines set from storage minecraft:aoc_2019_day10 data
#data modify storage minecraft:io lines set from storage test data

scoreboard players set MAX REG 0

scoreboard players set PSIZE1 REG 0
scoreboard players set PSIZE2 REG 0

say Drawing ...
kill @e[tag=draw]
summon armor_stand -30 10 -30 {NoGravity:1b,Marker:1b,Tags:["draw"],Invisible:1b}
execute store result score LINES REG run data get storage io lines
scoreboard players operation PSIZE1 REG = LINES REG
execute as @e[tag=draw] at @s run function aoc:sol_2019/day10/draw_blocks

execute as @e[tag=draw] at @s run clone ~-25 ~ ~-25 ~25 ~ ~25 ~-25 ~20 ~-25



scoreboard players set P1 REG 1
scoreboard players set P2 REG 1

say Generating coprimes pairs ...
#TODO Handle cases [1,1] and [1,0], a non swapable case
data modify storage mem coprimes set value []
data modify storage mem modif set value [[1,1],[1,-1],[-1,1],[-1,-1]]
function aoc:sol_2019/day10/coprimes_pairs


say Solving ...
kill @e[tag=count]
summon armor_stand -30 10 -30 {NoGravity:1b,Marker:1b,Tags:["count"],Invisible:1b}
scoreboard players set X REG 0
scoreboard players set Z REG 0
execute as @e[tag=draw] at @s run tp -30 10 -30
function aoc:sol_2019/day10/solve_at

