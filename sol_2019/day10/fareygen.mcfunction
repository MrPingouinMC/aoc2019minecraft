
scoreboard players operation K REG = N REG 
scoreboard players operation K REG += B REG 
scoreboard players operation K REG /= D REG


scoreboard players operation T1 REG = C REG
scoreboard players operation T2 REG = D REG
scoreboard players operation T3 REG = K REG
scoreboard players operation T3 REG *= C REG
scoreboard players operation T3 REG -= A REG
scoreboard players operation T4 REG = K REG
scoreboard players operation T4 REG *= D REG
scoreboard players operation T4 REG -= B REG

scoreboard players operation A REG = T1 REG
scoreboard players operation B REG = T2 REG
scoreboard players operation C REG = T3 REG
scoreboard players operation D REG = T4 REG

data modify storage mem farey append value [0, 0] 
execute store result storage mem farey[-1][0] int 1 run scoreboard players get A REG
execute store result storage mem farey[-1][1] int 1 run scoreboard players get B REG

#tellraw @a ["next ", {"score":{"objective":"REG","name":"A"}}, " ", {"score":{"objective":"REG","name":"B"}}]
execute if score C REG <= N REG run function aoc:sol_2019/day10/fareygen