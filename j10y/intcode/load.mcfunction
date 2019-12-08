


scoreboard players set OUT_DEBUG REG 0
scoreboard players set STEP_DEBUG REG 0

scoreboard players set POINTER REG 0

execute as @e[tag=pointer] run function aoc:j10y/intcode/loadrec
scoreboard players set POINTER REG 0