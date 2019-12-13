scoreboard players set OFFSET REG 0
scoreboard players operation POS REG = @s X 
execute as @e[tag=moon] if score @s X > POS REG run scoreboard players add OFFSET REG 1
execute as @e[tag=moon] if score @s X < POS REG run scoreboard players remove OFFSET REG 1
scoreboard players operation @s VX += OFFSET REG

#tellraw @a ["Iter ", {"score":{"objective":"REG","name":"ITER"}}, ". X : ", {"score":{"objective":"X","name":"@s"}}, " ", {"score":{"objective":"VX","name":"@s"}}]