scoreboard players set OFFSET REG 0
scoreboard players operation POS REG = @s Z 
execute as @e[tag=moon] if score @s Z > POS REG run scoreboard players add OFFSET REG 1
execute as @e[tag=moon] if score @s Z < POS REG run scoreboard players remove OFFSET REG 1
scoreboard players operation @s VZ += OFFSET REG