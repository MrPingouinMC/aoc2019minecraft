
clone ~-25 ~20 ~-25 ~25 ~20 ~25 ~-25 ~ ~-25
#tellraw @a ["solve", {"score":{"objective":"REG","name":"X"}}, " ", {"score":{"objective":"REG","name":"Z"}}]
scoreboard players set COUNT REG 0

execute if block ~ ~ ~ pink_terracotta run setblock ~ ~ ~ black_terracotta
execute if block ~ ~ ~ gray_stained_glass run setblock ~ ~ ~ black_stained_glass

execute store result score BASEX REG run data get entity @s Pos[0]
execute store result score BASEZ REG run data get entity @s Pos[2]

#setblock ~ ~-1 ~ stone
execute store result score SIZE REG run data get storage mem coprimes
execute store result score MODIFS REG run data get storage mem modif
scoreboard players set MODIF REG 0
execute if block ~ ~ ~ black_terracotta as @e[tag=draw] at @s run function aoc:sol_2019/day10/solve_count
execute if block ~ ~ ~ black_terracotta as @e[tag=draw] at @s run function aoc:sol_2019/day10/special_case

execute if score COUNT REG > MAX REG run scoreboard players operation MAX REG = COUNT REG

tp ~1 ~ ~
scoreboard players add X REG 1
execute if score X REG >= PSIZE1 REG run scoreboard players add Z REG 1

execute at @s if score Z REG >= PSIZE2 REG run fill ~ ~ ~ -30 ~ -30 light_blue_terracotta replace pink_terracotta
execute at @s if score Z REG >= PSIZE2 REG run fill ~ ~ ~ -30 ~ -30 light_blue_terracotta replace red_terracotta
execute at @s if score Z REG >= PSIZE2 REG run fill ~ ~ ~ -30 ~ -30 white_stained_glass replace gray_stained_glass

execute if score X REG >= PSIZE1 REG run tp -30 ~ ~1
execute if score X REG >= PSIZE1 REG run scoreboard players set X REG 0

#execute at @s if score Z REG < PSIZE2 REG run function aoc:sol_2019/day10/solve
execute at @s if score Z REG < PSIZE2 REG run schedule function aoc:sol_2019/day10/solve_at 1t
execute at @s if score Z REG >= PSIZE2 REG run function aoc:sol_2019/day10/final