scoreboard players operation HASH REG *= A REG
scoreboard players operation HASH REG += @s HASH
scoreboard players operation HASH REG *= A REG
scoreboard players operation HASH REG += @s HASH2

scoreboard players operation HASH2 REG *= B REG
scoreboard players operation HASH2 REG += @s HASH
scoreboard players operation HASH2 REG *= B REG
scoreboard players operation HASH2 REG += @s HASH2


#tellraw @a ["hash mid", {"score":{"objective":"REG","name":"HASH"}}, "   ", {"score":{"objective":"HASH","name":"@s"}}, "   ", {"score":{"objective":"HASH2","name":"@s"}}]
#scoreboard players operation HASH REG %= MOD REG