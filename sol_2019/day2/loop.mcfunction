


execute store result score OP REG run data get storage minecraft:proc arr[0]

execute if score OP REG matches 1..2 run function aoc:sol_2019/day2/op1

execute unless score OP REG matches 1..2 unless score OP REG matches 99 run tellraw @a ["Invalid state", {"score":{"objective":"REG","name":"OP"}}]

#execute if score OP REG matches 99 run say end

execute if score OP REG matches 1..2 run scoreboard players add INDEX REG 4
execute if score OP REG matches 1..2 run scoreboard players operation SHIFT REG = 4 CONST
execute if score OP REG matches 1..2 run function aoc:sol_2019/day2/shift

execute if score OP REG matches 1..2 run function aoc:sol_2019/day2/loop

