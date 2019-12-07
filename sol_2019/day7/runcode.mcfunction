


data modify storage minecraft:intcode in set value []

data modify storage intcode in append from storage mem phase[0]
data modify storage intcode in append from storage mem signal_stack[-1]

#tellraw @a ["OUT ", {"nbt":"out","storage":"intcode"}]

function aoc:j10y/intcode/load_copy
function aoc:j10y/intcode/run

