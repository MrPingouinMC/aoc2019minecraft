


scoreboard players set OUT_DEBUG REG 0
scoreboard players set STEP_DEBUG REG 0

scoreboard players set POINTER REG 0
execute store result score LEN REG run data get storage io line

execute as @e[tag=pointer] run function aoc:j10y/intcode/loadrec