
execute store result score P1 REG run data get storage mem coprimes[0][0]
execute store result score P2 REG run data get storage mem coprimes[0][1]


execute store result score F1 REG run data get storage mem modif[0][0]
execute store result score F2 REG run data get storage mem modif[0][1]

scoreboard players operation P1 REG *= F1 REG
scoreboard players operation P2 REG *= F2 REG

scoreboard players operation PX REG = BASEX REG
scoreboard players operation PZ REG = BASEZ REG

#tellraw @a ["Ps", {"score":{"objective":"REG","name":"P1"}}, " ", {"score":{"objective":"REG","name":"P2"}}]
#tellraw @a ["primes", {"nbt":"coprimes[0]","storage":"mem"}]
function aoc:sol_2019/day10/ray_count




data modify storage mem modif append from storage mem modif[0]
data remove storage mem modif[0]
scoreboard players add MODIF REG 1
execute if score MODIF REG >= MODIFS REG run scoreboard players remove SIZE REG 1
execute if score MODIF REG >= MODIFS REG run data modify storage mem coprimes append from storage mem coprimes[0]
execute if score MODIF REG >= MODIFS REG run data remove storage mem coprimes[0]
execute if score MODIF REG >= MODIFS REG run scoreboard players set MODIF REG 0
execute if score SIZE REG matches 1.. run function aoc:sol_2019/day10/solve_count