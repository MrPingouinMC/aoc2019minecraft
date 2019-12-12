
#tellraw @a ["XYZ ", {"score":{"objective":"X","name":"@s"}}, "  ", {"score":{"objective":"Y","name":"@s"}}, "  ", {"score":{"objective":"Z","name":"@s"}}, "     ", {"score":{"objective":"VX","name":"@s"}}, "  ", {"score":{"objective":"VY","name":"@s"}}, "  ", {"score":{"objective":"VZ","name":"@s"}}]

scoreboard players set OFFSET REG 0
scoreboard players operation POS REG = @s X 
execute as @e[tag=moon] if score @s X > POS REG run scoreboard players add OFFSET REG 1
execute as @e[tag=moon] if score @s X < POS REG run scoreboard players remove OFFSET REG 1
scoreboard players operation @s VX += OFFSET REG
