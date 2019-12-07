
scoreboard players set POINTER REG 0
data modify storage intcode out set value []
execute as @e[tag=pointer] run function aoc:j10y/intcode/runrec