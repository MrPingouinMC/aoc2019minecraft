


#execute store result score COPY REG run data get storage mem amps[0]
#tellraw @a ["start ", {"score":{"objective":"REG","name":"SIGNAL"}}, "  ", {"score":{"objective":"REG","name":"COPY"}}]

function aoc:j10y/intcode/load_copy
data modify storage minecraft:intcode in append value -1
execute store result storage minecraft:intcode in[-1] int 1 run scoreboard players get SIGNAL REG

#tellraw @a ["IN ", {"nbt":"in","storage":"intcode"}]
#tellraw @a ["block : ", {"block":"10 2 10","nbt":"RecordItem.tag.8"}]
function aoc:j10y/intcode/resume
#tellraw @a ["OUT ", {"nbt":"out","storage":"intcode"}]
#tellraw @a ["block : ", {"block":"10 2 10","nbt":"RecordItem.tag.8"}]
execute store result score SIGNAL REG run data get storage intcode out[0]
data remove storage intcode out[0]
function aoc:j10y/intcode/copy

#TODO handle halt and not halt cases.


#tellraw @a {"nbt":"amps","storage":"mem"}

data modify storage mem amps append from storage mem amps[0]
data remove storage mem amps[0]

scoreboard players add COPY REG 1
execute if score COPY REG > COPIES REG run scoreboard players set COPY REG 1

execute if score HALT REG matches 0 if score SIGNAL REG > MAX REG run scoreboard players operation MAX REG = SIGNAL REG
execute if score HALT REG matches 0 run scoreboard players remove RUNNING REG 1
execute if score RUNNING REG matches 1.. run function aoc:sol_2019/day7/compute_loop

