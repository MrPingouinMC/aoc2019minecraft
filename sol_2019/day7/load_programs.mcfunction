
data modify storage minecraft:intcode in set value [-1]
execute store result storage intcode in[0] int 1 run data get storage mem amps[0]

#tellraw @a ["load", {"nbt":"in","storage":"intcode"}]

function aoc:j10y/intcode/copy


data modify storage mem amps append from storage mem amps[0]
data remove storage mem amps[0]

scoreboard players add COPY REG 1 
execute if score COPY REG <= COPIES REG run function aoc:sol_2019/day7/load_programs