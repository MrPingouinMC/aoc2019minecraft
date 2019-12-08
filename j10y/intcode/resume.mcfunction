
scoreboard players set HALT REG 0
function aoc:j10y/load_state
#data modify storage intcode out set value []
execute as @e[tag=pointer] run function aoc:j10y/intcode/runrec