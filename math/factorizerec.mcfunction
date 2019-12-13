
scoreboard players set COUNT REG 0
function aoc:math/divide_max
execute if score COUNT REG matches 1.. run data modify storage proc fact append value [0,0]
execute if score COUNT REG matches 1.. run execute store result storage proc fact[-1][0] int 1 run scoreboard players get C REG
execute if score COUNT REG matches 1.. run execute store result storage proc fact[-1][1] int 1 run scoreboard players get COUNT REG
#scoreboard players operation MOD REG = V REG
#scoreboard players operation MOD REG %= C REG
#execute if score MOD REG matches 0 if score BOOL REG matches 0 run data modify storage proc fact append value [0] 
#execute if score MOD REG matches 0 run execute store result storage proc fact int 1 run scoreboard players get C REG
#execute if score MOD REG matches 0 run scoreboard players set BOOL REG 1
#execute if score MOD REG matches 0 run scoreboard players operation V REG /= C REG

execute if score COUNT REG matches 0 run scoreboard players add C REG 2


execute if score C REG <= V REG run function aoc:math/factorizerec