execute if score B REG matches 0 run scoreboard players operation R REG = A REG 
execute if score B REG matches 0 run scoreboard players set C REG 1 
execute unless score B REG matches 0 run scoreboard players set C REG 0 
execute unless score B REG matches 0 run scoreboard players operation T REG = A REG 
execute unless score B REG matches 0 run scoreboard players operation T REG %= B REG 
execute unless score B REG matches 0 run scoreboard players operation A REG = B REG 
execute unless score B REG matches 0 run scoreboard players operation B REG = T REG 
execute if score C REG matches 0 run function aoc:proc/gcd
