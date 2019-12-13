


execute store result score FACT REG run data get storage proc lcm[0][0]


data modify storage proc bintv set value [0]
execute store result storage proc bintv[0] int 1 run scoreboard players get FACT REG
function aoc:proc/bigintnorm
data modify storage proc bintm2 set from storage proc bintr

data modify storage proc bintv set value [0]
function aoc:proc/bigintmult
data modify storage proc bintm1 set from storage proc bintmr




execute store result score OCC REG run data get storage proc lcm[0][1]
scoreboard players remove OCC REG 1
execute store result storage proc lcm[0][1] int 1 run scoreboard players get OCC REG

execute if score OCC REG matches 0 run data remove storage proc lcm[0]


execute store result score SIZE REG run data get storage proc lcm
execute if score SIZE REG matches 1.. run function aoc:sol_2019/day12/lcm_result_loop