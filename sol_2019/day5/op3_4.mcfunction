

execute if score OP REG matches 4 run function aoc:sol_2019/day5/read_arg
execute if score OP REG matches 4 run scoreboard players operation OUT REG = R REG


execute if score OP REG matches 3 run function aoc:sol_2019/day5/read_arg_pos
execute if score OP REG matches 3 run scoreboard players operation POS REG = R REG
execute if score OP REG matches 3 run scoreboard players operation V REG = INPUT REG
execute if score OP REG matches 3 run function aoc:sol_2019/day5/moveset
