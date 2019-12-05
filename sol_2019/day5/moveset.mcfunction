#tellraw @a ["Changed registry at ", {"score":{"objective":"REG","name":"POS"}}, " to ", {"score":{"objective":"REG","name":"V"}}]

#scoreboard players operation POS REG = POINTER REG
function aoc:sol_2019/day5/move
execute at @s run function aoc:sol_2019/day5/set_value