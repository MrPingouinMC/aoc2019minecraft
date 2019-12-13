scoreboard players operation FULL_HASH REG = HASH REG
scoreboard players operation FULL_HASH2 REG = HASH2 REG

scoreboard players operation HASH REG %= MOD REG

scoreboard players operation X REG = HASH REG
scoreboard players operation X REG %= 32 CONST
scoreboard players operation HASH REG /= 32 CONST

scoreboard players operation Z REG = HASH REG
scoreboard players operation Z REG %= 32 CONST
scoreboard players operation HASH REG /= 32 CONST

scoreboard players operation Y REG = HASH REG
#scoreboard players operation Y REG %= 256 CONST
scoreboard players operation Y REG %= 256 CONST
scoreboard players add Z REG 50


#tellraw @a ["pos ", {"score":{"objective":"REG","name":"X"}}, "  ", {"score":{"objective":"REG","name":"Y"}}, "  ", {"score":{"objective":"REG","name":"Z"}}]
execute store result entity @s Pos[0] double 1 run scoreboard players get X REG
execute store result entity @s Pos[1] double 1 run scoreboard players get Y REG
execute store result entity @s Pos[2] double 1 run scoreboard players get Z REG