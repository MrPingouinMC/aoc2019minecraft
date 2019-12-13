
data modify storage proc bint2 prepend value 0
scoreboard players remove SHIFT REG 1 
execute if score SHIFT REG matches 1.. run function aoc:proc/bigintshift