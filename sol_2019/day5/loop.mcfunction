

scoreboard players operation POS REG = POINTER REG
function aoc:sol_2019/day5/moveget


scoreboard players operation OP REG = R REG
scoreboard players operation MODE REG = OP REG
scoreboard players operation MODE REG /= 100 CONST

#tellraw @a ["Pointer ",{"score":{"objective":"REG","name":"POINTER"}}, "    OP : ", {"score":{"objective":"REG","name":"OP"}}, "   ", {"score":{"objective":"REG","name":"MODE"}}]

scoreboard players operation OP REG %= 100 CONST

scoreboard players set MOVE_POINTER REG 1
execute if score OP REG matches 1..2 run function aoc:sol_2019/day5/op1_2
execute if score OP REG matches 3..4 run function aoc:sol_2019/day5/op3_4
execute if score OP REG matches 5..6 run function aoc:sol_2019/day5/op5_6
execute if score OP REG matches 7..8 run function aoc:sol_2019/day5/op7_8


#Paramerters should already shift the pointer position as they read arguments
execute if score OP REG matches 1..8 if score MOVE_POINTER REG matches 1 run scoreboard players add POINTER REG 1


#tellraw @a ["end pointer", {"score":{"objective":"REG","name":"OP"}}, "  at ", {"score":{"objective":"REG","name":"POINTER"}}, " ", {"score":{"objective":"REG","name":"MOVE_POINTER"}}]

execute unless score OP REG matches 1..8 unless score OP REG matches 99 run tellraw @a ["Invalid state", {"score":{"objective":"REG","name":"OP"}}]
#execute if score OP REG matches 99 run say end


execute if score OP REG matches 1..8 run function aoc:sol_2019/day5/loop

