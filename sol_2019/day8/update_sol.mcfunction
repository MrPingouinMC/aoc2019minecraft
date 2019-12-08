scoreboard players operation SUM REG = ONE REG
scoreboard players operation SUM REG *= TWO REG


tellraw @a ["update sol", {"score":{"objective":"REG","name":"ZERO"}}, " ", {"score":{"objective":"REG","name":"ONE"}}, " ", {"score":{"objective":"REG","name":"TWO"}}]


execute if score ZERO REG < SOLMIN REG run scoreboard players operation SOL REG = SUM REG
execute if score ZERO REG < SOLMIN REG run scoreboard players operation SOLMIN REG = ZERO REG


scoreboard players set ZERO REG 0
scoreboard players set ONE REG 0
scoreboard players set TWO REG 0