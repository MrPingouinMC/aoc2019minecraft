

function aoc:j10y/intcode/read_arg_pos
scoreboard players operation POS REG = R REG
execute store result score V REG run data get storage intcode in[0]
data remove storage intcode in[0]
function aoc:j10y/moveset
