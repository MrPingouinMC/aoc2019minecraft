

function aoc:sol_2019/day5/read_arg
scoreboard players operation NB1 REG = R REG


function aoc:sol_2019/day5/read_arg
scoreboard players operation NB2 REG = R REG

function aoc:sol_2019/day5/read_arg_pos


scoreboard players operation V REG = NB1 REG
execute if score OP REG matches 1 run scoreboard players operation V REG += NB2 REG
execute if score OP REG matches 2 run scoreboard players operation V REG *= NB2 REG


scoreboard players operation POS REG = R REG
function aoc:sol_2019/day5/moveset