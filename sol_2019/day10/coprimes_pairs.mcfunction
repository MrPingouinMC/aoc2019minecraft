#naive coprime generation


function aoc:sol_2019/day10/are_coprimes
execute if score BOOL REG matches 1 run data modify storage mem coprimes append value [0,0]
execute if score BOOL REG matches 1 run execute store result storage mem coprimes[-1][0] int 1 run scoreboard players get P1 REG
execute if score BOOL REG matches 1 run execute store result storage mem coprimes[-1][1] int 1 run scoreboard players get P2 REG

scoreboard players add P1 REG 1
execute if score P1 REG >= PSIZE1 REG run scoreboard players add P2 REG 1
execute if score P1 REG >= PSIZE1 REG run scoreboard players set P1 REG 1

execute if score P2 REG < PSIZE2 REG run function aoc:sol_2019/day10/coprimes_pairs