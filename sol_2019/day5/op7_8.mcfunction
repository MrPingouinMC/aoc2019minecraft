

function aoc:sol_2019/day5/read_arg
scoreboard players operation NB1 REG = R REG


function aoc:sol_2019/day5/read_arg
scoreboard players operation NB2 REG = R REG

function aoc:sol_2019/day5/read_arg_pos


scoreboard players set V REG 0
execute if score OP REG matches 7 if score NB1 REG < NB2 REG run scoreboard players set V REG 1
execute if score OP REG matches 8 if score NB1 REG = NB2 REG run scoreboard players set V REG 1


scoreboard players operation POS REG = R REG
function aoc:sol_2019/day5/moveset