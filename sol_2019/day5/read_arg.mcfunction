function aoc:sol_2019/day5/get_mod

scoreboard players add POINTER REG 1
scoreboard players operation POS REG = POINTER REG
function aoc:sol_2019/day5/moveget

#IF CM == 1, we aready have the direct value
execute if score CM REG matches 0 run scoreboard players operation POS REG = R REG
execute if score CM REG matches 0 run function aoc:sol_2019/day5/moveget

#tellraw @a ["get argument ", {"score":{"objective":"REG","name":"R"}}, "   ", {"score":{"objective":"REG","name":"CM"}}]