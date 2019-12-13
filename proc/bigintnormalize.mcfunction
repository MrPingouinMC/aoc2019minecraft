
#tellraw @a ["norm loop", {"nbt":"bintr","storage":"proc"}]

execute store result score V REG run data get storage proc bintr[-1]
scoreboard players operation RET REG = V REG
scoreboard players operation V REG %= BINT CONST
scoreboard players operation RET REG /= BINT CONST

execute store result storage minecraft:proc bintr[-1] int 1 run scoreboard players get V REG

#tellraw @a ["mod", {"nbt":"bintr","storage":"proc"}]
#tellraw @a ["vals", {"score":{"objective":"REG","name":"V"}}, " ", {"score":{"objective":"REG","name":"RET"}}]

scoreboard players remove SIZE REG 1

execute if score SIZE REG matches 1.. store result score V2 REG run data get storage proc bintr[-2]
execute if score SIZE REG matches 1.. run scoreboard players operation V2 REG += RET REG
execute if score SIZE REG matches 1.. store result storage minecraft:proc bintr[-2] int 1 run scoreboard players get V2 REG

#tellraw @a ["mod2", {"nbt":"bintr","storage":"proc"}]

data modify storage minecraft:proc bintr prepend from storage minecraft:proc bintr[-1]
#tellraw @a ["mod2.1", {"nbt":"bintr","storage":"proc"}]
data remove storage minecraft:proc bintr[-1]

#tellraw @a ["mod2.5", {"nbt":"bintr","storage":"proc"}]

execute if score SIZE REG matches 0 if score RET REG matches 1.. run function aoc:proc/pushret

#data modify storage proc bintr append value 0
#execute if score SIZE REG matches 0 if score RET REG matches 1.. store result storage proc bintr[-1] int 1 run scoreboard players get RET REG

#tellraw @a ["mod3", {"nbt":"bintr","storage":"proc"}]
#tellraw @a ["size", {"score":{"objective":"REG","name":"SIZE"}}]

execute if score SIZE REG matches 1.. run function aoc:proc/bigintnormalize