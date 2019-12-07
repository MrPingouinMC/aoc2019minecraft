execute store result score SIGNAL REG run data get storage mem signal_stack[-1]
#tellraw @a ["Set max ", {"nbt":"","storage":"mem"}, {"score":{"objective":"REG","name":"SIGNAL"}}]
execute if score SIGNAL REG > MAX REG run scoreboard players operation MAX REG = SIGNAL REG