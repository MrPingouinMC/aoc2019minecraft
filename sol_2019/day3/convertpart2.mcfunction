#Variant of part 1, but also store 

function aoc:io/read_char
scoreboard players operation DIR REG = RINT REG

#function aoc:io/pop_char


scoreboard players set RINT REG 0
function aoc:io/read_int
scoreboard players operation MOVE REG = RINT REG

#tellraw @a [{"score":{"objective":"REG","name":"DIR"}}, "    ", {"score":{"objective":"REG","name":"MOVE"}}]


#Left / right
execute if score DIR REG matches 21 run scoreboard players operation POSX REG -= MOVE REG
execute if score DIR REG matches 27 run scoreboard players operation POSX REG += MOVE REG

#Up / down
execute if score DIR REG matches 30 run scoreboard players operation POSY REG += MOVE REG
execute if score DIR REG matches 13 run scoreboard players operation POSY REG -= MOVE REG

scoreboard players operation WIRE1 REG += MOVE REG

#tellraw @a [{"score":{"objective":"REG","name":"DIR"}}, "    ", {"score":{"objective":"REG","name":"MOVE"}}]

data modify storage minecraft:proc arr append value {}
execute store result storage minecraft:proc arr[-1].x int 1 run scoreboard players get POSX REG
execute store result storage minecraft:proc arr[-1].y int 1 run scoreboard players get POSY REG
execute store result storage minecraft:proc arr[-1].p int 1 run scoreboard players get WIRE1 REG

#execute store storage 
scoreboard players add INDEX REG 1
execute store result score SIZE REG run data get storage io line
execute if score SIZE REG matches 1.. run function aoc:io/pop_char
execute if score SIZE REG matches 1.. run function aoc:sol_2019/day3/convertpart2
