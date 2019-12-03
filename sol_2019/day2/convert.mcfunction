

#function aoc:io/readpopline

scoreboard players set RINT REG 0
function aoc:io/read_int
function aoc:io/popchar

execute store result storage minecraft:proc nb int 1 run scoreboard players get RINT REG
data modify storage minecraft:proc arr append from storage minecraft:proc nb
#tellraw @a {"score":{"objective":"REG","name":"RINT"}}

execute store result score SIZE REG run data get storage io line
execute if score SIZE REG matches 1.. run function aoc:sol_2019/day2/convert
