

function aoc:j10y/intcode/read_arg_pos
scoreboard players operation POS REG = R REG
execute store result score SIZE REG run data get storage intcode in
execute if score SIZE REG matches 0 run scoreboard players set HALT REG 1


execute if score HALT REG matches 0 run execute store result score V REG run data get storage intcode in[0]
execute if score HALT REG matches 0 run data remove storage intcode in[0]
execute if score HALT REG matches 0 run function aoc:j10y/moveset

execute if score HALT REG matches 1 run scoreboard players remove POINTER REG 2
#execute if score HALT REG matches 1 run tellraw @a "halting waiting for input"