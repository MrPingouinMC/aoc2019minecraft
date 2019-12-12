#tellraw @a ["Iteration ", {"score":{"objective":"REG","name":"ITER"}}]

execute as @e[tag=moon] run function aoc:sol_2019/day12/update_x
execute as @e[tag=moon] run function aoc:sol_2019/day12/update_y
execute as @e[tag=moon] run function aoc:sol_2019/day12/update_z

execute as @e[tag=moon] run scoreboard players operation @s X += @s VX
execute as @e[tag=moon] run scoreboard players operation @s Y += @s VY
execute as @e[tag=moon] run scoreboard players operation @s Z += @s VZ

scoreboard players add ITER REG 1
execute if score ITER REG < ITERATIONS REG run function aoc:sol_2019/day12/iterations