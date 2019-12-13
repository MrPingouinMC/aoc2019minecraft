data modify storage io bint set value []
scoreboard players set RLOAD REG 0
scoreboard players set APPEND REG 0
function aoc:io/read_bigintrec

execute if score RLOAD REG matches 1.. run data modify storage io bint append value 0
execute if score RLOAD REG matches 0 if score APPEND REG matches 0 run data modify storage io bint append value 0
execute if score RLOAD REG matches 1.. run execute store result storage io bint[-1] int 1 run scoreboard players get RLOAD REG