

function aoc:j10y/intcode/read_arg
scoreboard players operation BOOL REG = R REG


function aoc:j10y/intcode/read_arg


execute if score OP REG matches 5 unless score BOOL REG matches 0 run scoreboard players operation POINTER REG = R REG
execute if score OP REG matches 6 if score BOOL REG matches 0 run scoreboard players operation POINTER REG = R REG

execute if score OP REG matches 5 unless score BOOL REG matches 0 run scoreboard players set MOVE_POINTER REG 0
execute if score OP REG matches 6 if score BOOL REG matches 0 run scoreboard players set MOVE_POINTER REG 0

