
#Move the pointer on the X axis to store it.
scoreboard players operation POS REG = LEN REG
function aoc:j10y/move
function aoc:j10y/move_copy

execute at @s run fill 10 0 10 10 ~ 10 stone
execute at @s run setblock 10 0 11 stone

execute at @s run clone ~ 0 ~ ~ ~ ~ 10 0 10
execute at @s run clone ~ 0 ~1 ~ 0 ~1 10 0 11
tp @s 10 0 10

function aoc:j10y/intcode/load_state