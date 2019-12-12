execute as @e[tag=moon] if score @s X matches ..-1 run scoreboard players operation @s X *= -1 CONST 
execute as @e[tag=moon] if score @s Y matches ..-1 run scoreboard players operation @s Y *= -1 CONST 
execute as @e[tag=moon] if score @s Z matches ..-1 run scoreboard players operation @s Z *= -1 CONST


execute as @e[tag=moon] run scoreboard players operation @s X += @s Y
execute as @e[tag=moon] run scoreboard players operation @s X += @s Z


execute as @e[tag=moon] if score @s VX matches ..-1 run scoreboard players operation @s VX *= -1 CONST 
execute as @e[tag=moon] if score @s VY matches ..-1 run scoreboard players operation @s VY *= -1 CONST 
execute as @e[tag=moon] if score @s VZ matches ..-1 run scoreboard players operation @s VZ *= -1 CONST

execute as @e[tag=moon] run scoreboard players operation @s VX += @s VY
execute as @e[tag=moon] run scoreboard players operation @s VX += @s VZ


execute as @e[tag=moon] run scoreboard players operation @s X *= @s VX

scoreboard players operation SOL REG += @e[tag=moon] X