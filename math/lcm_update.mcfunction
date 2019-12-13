
execute store result score FACT REG run data get storage proc lcmv[0][0]

execute store result score SIZE REG run data get storage proc lcm
scoreboard players set FOUND REG 0
function aoc:math/lcm_update_value

execute store result score OCC REG run data get storage proc lcmv[0][1]
execute if score FOUND REG matches 1 run execute store result score OCC2 REG run data get storage proc lcm[0][1]
execute if score FOUND REG matches 1 run scoreboard players operation OCC REG > OCC2 REG
execute if score FOUND REG matches 1 run execute store result storage proc lcm[0][1] int 1 run scoreboard players get OCC REG

execute if score FOUND REG matches 0 run data modify storage proc lcm append value [0,0] 
execute if score FOUND REG matches 0 run execute store result storage proc lcm[-1][0] int 1 run scoreboard players get FACT REG
execute if score FOUND REG matches 0 run execute store result storage proc lcm[-1][1] int 1 run scoreboard players get OCC REG

data remove storage proc lcmv[0]

execute store result score SIZE REG run data get storage proc lcmv
execute if score SIZE REG matches 1.. run function aoc:math/lcm_update