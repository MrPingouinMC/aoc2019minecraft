data modify storage proc lcm set value []

scoreboard players operation V REG = PERIOD3 REG
function aoc:math/factorize
data modify storage proc lcm set from storage proc fact


scoreboard players operation V REG = PERIOD2 REG
function aoc:math/factorize

data modify storage proc lcmv set from storage proc fact
function aoc:math/lcm_update

scoreboard players operation V REG = PERIOD1 REG
function aoc:math/factorize

data modify storage proc lcmv set from storage proc fact
function aoc:math/lcm_update

function aoc:sol_2019/day12/lcm_result


data modify storage proc sol set from storage proc bintmr
