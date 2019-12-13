
#scoreboard players set V REG 5040
data modify storage proc fact set value []

scoreboard players set C REG 2

scoreboard players set COUNT REG 0
function aoc:math/divide_max
execute if score COUNT REG matches 1.. run data modify storage proc fact append value [2,0]
execute if score COUNT REG matches 1.. run execute store result storage proc fact[-1][1] int 1 run scoreboard players get COUNT REG

scoreboard players set C REG 3
function aoc:math/factorizerec


execute if score V REG matches 2.. run data modify storage proc fact append value [0,1]
execute if score V REG matches 2.. run execute store result storage proc fact[-1][0] int 1 run scoreboard players get V REG

#tellraw @a ["factors ", {"nbt":"fact","storage":"proc"}]