
scoreboard players set SIGNAL REG 0
data modify storage mem amps set from storage mem phase_stack

#tellraw @a ["Phase : ", {"nbt":"amps","storage":"mem"}]

execute store result score COPIES REG run data get storage mem amps
data modify storage intcode out set value []

scoreboard players set COPY REG -1
scoreboard players set POINTER REG 0
function aoc:j10y/intcode/load_copy

scoreboard players set COPY REG 1
function aoc:sol_2019/day7/load_programs

scoreboard players set COPY REG 1
execute store result score RUNNING REG run data get storage mem amps
function aoc:sol_2019/day7/compute_loop

#tellraw @a ["end : ", {"score":{"objective":"REG","name":"SIGNAL"}}]