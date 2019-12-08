#Must specfy a max LEN of the data for more efficient copy

function aoc:j10y/intcode/save_state

scoreboard players operation POS REG = LEN REG
function aoc:j10y/move
function aoc:j10y/move_copy

execute at @s run fill ~ 0 ~ ~ ~ ~ stone
execute at @s run setblock ~ 0 ~1 stone

execute at @s run clone 10 0 10 10 ~ 10 ~ 0 ~
execute at @s run clone 10 0 11 10 0 11 ~ 0 ~1
tp @s 10 0 10
