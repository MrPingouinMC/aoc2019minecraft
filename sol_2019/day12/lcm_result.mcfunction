
data modify storage proc bintm1 set value [1]
data modify storage proc bintm2 set value [0]
data modify storage proc bintv set value [0]


#execute store result score FACT REG run data get storage proc lcm[0][0]
#execute store result score OCC REG run data get storage proc lcm[0][1]

#data remove storage proc lcm[0]
function aoc:sol_2019/day12/lcm_result_loop