
#Old LCM calculation based on multiplication. But can't work because numbers are too big


scoreboard players operation A REG = PERIOD1 REG
scoreboard players operation B REG = PERIOD3 REG
function aoc:proc/gcd

scoreboard players operation PERIOD3 REG /= R REG
scoreboard players operation PERIOD3 REG *= PERIOD1 REG

scoreboard players operation A REG = PERIOD2 REG
scoreboard players operation B REG = PERIOD3 REG
function aoc:proc/gcd
scoreboard players operation PERIOD3 REG /= R REG


#tellraw @a ["Result ", {"score":{"objective":"REG","name":"PERIOD1"}} ,"   ", {"score":{"objective":"REG","name":"PERIOD2"}} , "   ", {"score":{"objective":"REG","name":"PERIOD3"}}]



data modify storage proc bintm1 set value [0]
data modify storage proc bintm2 set value [0]
data modify storage proc bintv set value [0]
execute store result storage proc bintv[0] int 1 run scoreboard players get PERIOD2 REG
function aoc:proc/bigintnorm
data modify storage proc bintm1 set from storage proc bintr

data modify storage proc bintv set value [0]
execute store result storage proc bintv[0] int 1 run scoreboard players get PERIOD3 REG
function aoc:proc/bigintnorm
data modify storage proc bintm2 set from storage proc bintr

function aoc:proc/bigintmult

data modify storage proc sol set from storage proc bintmr
