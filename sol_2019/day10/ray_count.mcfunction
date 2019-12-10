
scoreboard players operation PX REG += P1 REG
scoreboard players operation PZ REG += P2 REG

execute store result entity @s Pos[0] double 1 run scoreboard players get PX REG
execute store result entity @s Pos[2] double 1 run scoreboard players get PZ REG

execute at @s if block ~ ~ ~ granite run scoreboard players add COUNT REG 1
#execute at @s if block ~ ~ ~ granite run tellraw @a ["sol ", {"score":{"objective":"REG","name":"X"}}, " ", {"score":{"objective":"REG","name":"Z"}}, " ", {"score":{"objective":"REG","name":"PX"}}, " ", {"score":{"objective":"REG","name":"PZ"}}, " ", {"score":{"objective":"REG","name":"P1"}}, " ", {"score":{"objective":"REG","name":"P2"}}]

execute at @s if block ~ ~ ~ glass run function aoc:sol_2019/day10/ray_count