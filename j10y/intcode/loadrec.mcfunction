#Load content of io.line into the computer at position POINTER

#Need to be ran as a pointer entity

#function aoc:io/readpopline

scoreboard players set RINT REG 0
function aoc:io/read_signedint
function aoc:io/popchar


scoreboard players operation POS REG = POINTER REG
function aoc:j10y/move

execute at @s unless block ~ ~ ~ minecraft:jukebox run setblock ~ ~ ~ minecraft:jukebox{RecordItem:{id:"pufferfish",Count:1,tag:{}}}


scoreboard players operation V REG = RINT REG
execute at @s run function aoc:j10y/set_value


scoreboard players operation LEN REG = POINTER REG
scoreboard players add POINTER REG 1
execute store result score SIZE REG run data get storage io line
execute if score SIZE REG matches 1.. run function aoc:j10y/intcode/loadrec
