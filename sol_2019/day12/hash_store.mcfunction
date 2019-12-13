
execute if score AXIS REG matches 0 as @e[tag=moon] run scoreboard players operation @s HASH = @s X
execute if score AXIS REG matches 0 as @e[tag=moon] run scoreboard players operation @s HASH2 = @s VX

execute if score AXIS REG matches 1 as @e[tag=moon] run scoreboard players operation @s HASH = @s Y
execute if score AXIS REG matches 1 as @e[tag=moon] run scoreboard players operation @s HASH2 = @s VY

execute if score AXIS REG matches 2 as @e[tag=moon] run scoreboard players operation @s HASH = @s Z
execute if score AXIS REG matches 2 as @e[tag=moon] run scoreboard players operation @s HASH2 = @s VZ

function aoc:sol_2019/day12/hash_exec