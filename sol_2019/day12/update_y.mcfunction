scoreboard players set OFFSET REG 0
scoreboard players operation POS REG = @s Y 
execute as @e[tag=moon] if score @s Y > POS REG run scoreboard players add OFFSET REG 1
execute as @e[tag=moon] if score @s Y < POS REG run scoreboard players remove OFFSET REG 1
scoreboard players operation @s VY += OFFSET REG