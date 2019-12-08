

scoreboard players operation POS REG = POINTER REG
function aoc:j10y/moveget


scoreboard players operation OP REG = R REG
scoreboard players operation MODE REG = OP REG
scoreboard players operation MODE REG /= 100 CONST

execute if score STEP_DEBUG REG matches 1 run tellraw @a ["Pointer ",{"score":{"objective":"REG","name":"POINTER"}}, "    OP : ", {"score":{"objective":"REG","name":"OP"}}]

scoreboard players operation OP REG %= 100 CONST

scoreboard players set MOVE_POINTER REG 1

execute if score OP REG matches 1..2 run function aoc:j10y/intcode/op1_2
execute if score OP REG matches 3 run function aoc:j10y/intcode/op3
execute if score OP REG matches 4 run function aoc:j10y/intcode/op4
execute if score OP REG matches 5..6 run function aoc:j10y/intcode/op5_6
execute if score OP REG matches 7..8 run function aoc:j10y/intcode/op7_8


#Paramerters should already shift the pointer position as they read arguments
execute if score OP REG matches 1..8 if score MOVE_POINTER REG matches 1 run scoreboard players add POINTER REG 1


execute unless score OP REG matches 1..8 unless score OP REG matches 99 run tellraw @a ["Invalid state", {"score":{"objective":"REG","name":"OP"}}]
#execute if score OP REG matches 99 run tellraw @a ["Program ended with exit code 0"]



execute if score OP REG matches 1..8 if score HALT REG matches 0 run function aoc:j10y/intcode/runrec

