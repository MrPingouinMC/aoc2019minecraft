



data modify storage mem index_stack append value -1
execute store result storage mem index_stack[-1] int 1 run scoreboard players get INDEX REG


function aoc:sol_2019/day7/runcode
data modify storage mem signal_stack append from storage minecraft:intcode out[0]
#data modify storage mem signal_stack append value 1


data modify storage mem phase_stack append from storage mem phase[0]
data remove storage mem phase[0]
scoreboard players set INDEX REG 0


execute store result score SIZE REG run data get storage mem phase
execute if score SIZE REG matches 1.. run function aoc:sol_2019/day7/solve

execute store result score SIZE REG run data get storage mem phase
execute if score SIZE REG matches 0 run function aoc:sol_2019/day7/set_max

data modify storage mem phase prepend from storage mem phase_stack[-1]
data remove storage mem phase_stack[-1]
data remove storage mem signal_stack[-1]


#Shift the array to access the next index
execute store result score INDEX REG run data get storage mem index_stack[-1]
data remove storage mem index_stack[-1]
data modify storage mem phase append from storage mem phase[0]
data remove storage mem phase[0]
scoreboard players add INDEX REG 1

execute store result score SIZE REG run data get storage mem phase
execute if score INDEX REG < SIZE REG run function aoc:sol_2019/day7/solve



