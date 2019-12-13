#tellraw @a ["Iteration ", {"score":{"objective":"REG","name":"ITER"}}]

execute if score AXIS REG matches 0 as @e[tag=moon] run function aoc:sol_2019/day12/update_x
execute if score AXIS REG matches 0 as @e[tag=moon] run scoreboard players operation @s X += @s VX

execute if score AXIS REG matches 1 as @e[tag=moon] run function aoc:sol_2019/day12/update_y
execute if score AXIS REG matches 1 as @e[tag=moon] run scoreboard players operation @s Y += @s VY

execute if score AXIS REG matches 2 as @e[tag=moon] run function aoc:sol_2019/day12/update_z
execute if score AXIS REG matches 2 as @e[tag=moon] run scoreboard players operation @s Z += @s VZ


execute as @e[tag=cursor] at @s run function aoc:sol_2019/day12/hash_store



scoreboard players add ITER REG 1

execute if score COLIDE REG matches 1 run scoreboard players add AXIS REG 1
execute if score COLIDE REG matches 1 run scoreboard players set ITER REG 0
execute if score COLIDE REG matches 1 run function aoc:sol_2019/day12/reset_set
execute if score COLIDE REG matches 1 run scoreboard players set COLIDE REG 0


execute if score AXIS REG matches 0..2 run function aoc:sol_2019/day12/iterations2