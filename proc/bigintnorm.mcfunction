#tellraw @a ["normv", {"nbt":"bintv","storage":"proc"}]

data modify storage proc bintr set value []
scoreboard players set RET REG 0
function aoc:proc/bigintnormrec

#tellraw @a ["norm r", {"nbt":"bintr","storage":"proc"}]
execute if score RET REG matches 1.. run function aoc:proc/pushret

#tellraw @a ["norm r", {"nbt":"bintr","storage":"proc"}]