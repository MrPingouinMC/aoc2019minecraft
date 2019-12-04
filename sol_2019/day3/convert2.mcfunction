
scoreboard players operation LAST_POSX REG = POSX REG
scoreboard players operation LAST_POSY REG = POSY REG


#tellraw @a ["c2 : ", {"score":{"objective":"REG","name":"POSX"}}, ", ", {"score":{"objective":"REG","name":"POSY"}}]

function aoc:io/read_char
scoreboard players operation DIR REG = RINT REG

#function aoc:io/pop_char


scoreboard players set RINT REG 0
function aoc:io/read_int
execute if score RINT REG matches -1 run say ERROR, invalid character
scoreboard players operation MOVE REG = RINT REG

#tellraw @a ["MOVE", {"score":{"objective":"REG","name":"MOVE"}}]


#Left / right
execute if score DIR REG matches 21 run scoreboard players operation POSX REG -= MOVE REG
execute if score DIR REG matches 27 run scoreboard players operation POSX REG += MOVE REG


#Up / down
execute if score DIR REG matches 30 run scoreboard players operation POSY REG += MOVE REG
execute if score DIR REG matches 13 run scoreboard players operation POSY REG -= MOVE REG

#1 if going Up/down
execute if score DIR REG matches 21..27 run scoreboard players set GDIR REG 0
execute unless score DIR REG matches 21..27 run scoreboard players set GDIR REG 1


execute if score POSX REG < LAST_POSX REG run scoreboard players operation A1 REG = POSX REG
execute if score POSX REG > LAST_POSX REG run scoreboard players operation A1 REG = LAST_POSX REG

execute if score POSX REG < LAST_POSX REG run scoreboard players operation A2 REG = LAST_POSX REG
execute if score POSX REG > LAST_POSX REG run scoreboard players operation A2 REG = POSX REG

execute if score POSY REG < LAST_POSY REG run scoreboard players operation B1 REG = POSY REG
execute if score POSY REG > LAST_POSY REG run scoreboard players operation B1 REG = LAST_POSY REG

execute if score POSY REG < LAST_POSY REG run scoreboard players operation B2 REG = LAST_POSY REG
execute if score POSY REG > LAST_POSY REG run scoreboard players operation B2 REG = POSY REG



#scoreboard players set DIST REG 999999999
scoreboard players operation SHIFT REG = LEN REG
function aoc:sol_2019/day3/intersect


data modify storage minecraft:proc arr append from storage minecraft:proc arr[0]
data remove storage minecraft:proc arr[0]

#tellraw @a {"storage":"proc","nbt":"arr"}

#execute if score DIST REG matches 1.. if score DIST REG < MIN REG run scoreboard players operation MIN REG = DIST REG

#PART2
execute if score PART REG matches 2 run scoreboard players operation WIRE2 REG += MOVE REG


scoreboard players add INDEX REG 1
execute store result score SIZE REG run data get storage io line
execute if score SIZE REG matches 1.. run function aoc:io/pop_char
execute if score SIZE REG matches 1.. run function aoc:sol_2019/day3/convert2
