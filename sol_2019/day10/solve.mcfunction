

#tellraw @a ["solve", {"score":{"objective":"REG","name":"X"}}, " ", {"score":{"objective":"REG","name":"Z"}}]
scoreboard players set COUNT REG 0

execute store result score BASEX REG run data get entity @s Pos[0]
execute store result score BASEZ REG run data get entity @s Pos[2]

#setblock ~ ~-1 ~ stone
execute store result score SIZE REG run data get storage mem coprimes
execute store result score MODIFS REG run data get storage mem modif
scoreboard players set MODIF REG 0
execute if block ~ ~ ~ granite as @e[tag=draw] at @s run function aoc:sol_2019/day10/solve_count


#Ugly special casing of [0, 1 ] and [0, 1]
scoreboard players operation PX REG = BASEX REG
scoreboard players operation PZ REG = BASEZ REG
scoreboard players set P1 REG 0
scoreboard players set P2 REG 1
function aoc:sol_2019/day10/ray_count

scoreboard players operation PX REG = BASEX REG
scoreboard players operation PZ REG = BASEZ REG
scoreboard players set P1 REG 0
scoreboard players set P2 REG -1
function aoc:sol_2019/day10/ray_count

scoreboard players operation PX REG = BASEX REG
scoreboard players operation PZ REG = BASEZ REG
scoreboard players set P1 REG 1
scoreboard players set P2 REG 0
function aoc:sol_2019/day10/ray_count

scoreboard players operation PX REG = BASEX REG
scoreboard players operation PZ REG = BASEZ REG
scoreboard players set P1 REG -1
scoreboard players set P2 REG 0
function aoc:sol_2019/day10/ray_count

execute if score COUNT REG > MAX REG run scoreboard players operation MAXX REG = BASEX REG
execute if score COUNT REG > MAX REG run scoreboard players operation MAXZ REG = BASEZ REG
#execute if score COUNT REG >= MAX REG run tellraw @a ["current max", {"score":{"objective":"REG","name":"COUNT"}}]
execute if score COUNT REG > MAX REG run scoreboard players operation MAX REG = COUNT REG

tp ~1 ~ ~
scoreboard players add X REG 1
execute if score X REG >= PSIZE1 REG run scoreboard players add Z REG 1

execute if score X REG >= PSIZE1 REG run tp -30 ~ ~1
execute if score X REG >= PSIZE1 REG run scoreboard players set X REG 0

execute at @s if score Z REG < PSIZE2 REG run function aoc:sol_2019/day10/solve