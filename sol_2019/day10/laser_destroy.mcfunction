

execute store result score P1 REG run data get storage mem farey[0][0]
execute store result score P2 REG run data get storage mem farey[0][1]

#execute if score SWITCH REG matches 1 run execute store result score P1 REG run data get storage mem farey[0][1]
#execute if score SWITCH REG matches 1 run execute store result score P2 REG run data get storage mem farey[0][0]

execute if score SWITCH REG matches 0 run data modify storage mem farey append from storage mem farey[0]
execute if score SWITCH REG matches 0 run data remove storage mem farey[0]

execute if score SWITCH REG matches 1 run data modify storage mem farey prepend from storage mem farey[-1]
execute if score SWITCH REG matches 1 run data remove storage mem farey[-1]

scoreboard players set F1 REG 1
scoreboard players set F2 REG 1

execute if score SIGN REG matches 0..1 run scoreboard players set F2 REG -1
execute if score SIGN REG matches 6..7 run scoreboard players set F2 REG -1
execute if score SIGN REG matches 4..8 run scoreboard players set F1 REG -1

scoreboard players set SWAP REG 0
execute if score SIGN REG matches 1..2 run scoreboard players set SWAP REG 1
execute if score SIGN REG matches 5..6 run scoreboard players set SWAP REG 1

execute if score SWAP REG matches 1 run scoreboard players operation P3 REG = P1 REG
execute if score SWAP REG matches 1 run scoreboard players operation P1 REG = P2 REG
execute if score SWAP REG matches 1 run scoreboard players operation P2 REG = P3 REG

#execute if score SWITCH REG matches 1 run execute store result score P2 REG run data get storage mem farey[0][0]

scoreboard players operation P1 REG *= F1 REG
scoreboard players operation P2 REG *= F2 REG

#tellraw @a ["Curr ", {"score":{"objective":"REG","name":"P1"}}, " " ,{"score":{"objective":"REG","name":"P2"}}, "  ", {"score":{"objective":"REG","name":"SIZE"}}, " " ,{"score":{"objective":"REG","name":"SWITCH"}}, " " ,{"score":{"objective":"REG","name":"SIGN"}}]

scoreboard players operation PX REG = MAXX REG
scoreboard players operation PZ REG = MAXZ REG
scoreboard players set COUNT REG 0

execute at @s run function aoc:sol_2019/day10/ray_count
execute at @s if score COUNT REG matches 1 run setblock ~ ~ ~ glass
#execute at @s if score COUNT REG matches 1 run setblock ~ ~1 ~ barrel{Items:[{id:stone,Count:1}]}
execute if score COUNT REG matches 1 run scoreboard players add DESTROY_COUNT REG 1
#execute at @s if score COUNT REG matches 1 store result block ~ ~1 ~ Items[0].Count int 1 run scoreboard players get DESTROY_COUNT REG
#execute if score COUNT REG matches 1 run say hit
#execute if score COUNT REG matches 1 run tellraw @a ["Destroy ", {"score":{"objective":"REG","name":"DESTROY_COUNT"}}, " ", {"score":{"objective":"REG","name":"P1"}}, " " ,{"score":{"objective":"REG","name":"P2"}}, "  ", {"score":{"objective":"REG","name":"SIZE"}}, " " ,{"score":{"objective":"REG","name":"SWITCH"}}, " " ,{"score":{"objective":"REG","name":"SIGN"}}]
#execute if score COUNT REG matches 1 run scoreboard players operation PRINTX REG = PX REG
#execute if score COUNT REG matches 1 run scoreboard players operation PRINTZ REG = PZ REG
#execute if score COUNT REG matches 1 run scoreboard players add PRINTX REG 30
#execute if score COUNT REG matches 1 run scoreboard players add PRINTZ REG 30
#execute if score COUNT REG matches 1 run tellraw @a ["Destroy ", {"score":{"objective":"REG","name":"DESTROY_COUNT"}}, " : ", {"score":{"objective":"REG","name":"PRINTX"}}, " " ,{"score":{"objective":"REG","name":"PRINTZ"}}]
execute if score COUNT REG matches 1 run scoreboard players set FOUND REG 1


execute if score COUNT REG matches 1 if score DESTROY_COUNT REG matches 200 run scoreboard players operation SOLX REG = PX REG
execute if score COUNT REG matches 1 if score DESTROY_COUNT REG matches 200 run scoreboard players operation SOLZ REG = PZ REG

#TODO FOUND
scoreboard players add SIZE REG 1
execute if score SIZE REG >= LEN REG run scoreboard players add SWITCH REG 1
execute if score SIZE REG >= LEN REG run scoreboard players operation SWITCH REG %= 2 CONST
execute if score SIZE REG >= LEN REG run scoreboard players add SIGN REG 1
execute if score SIGN REG matches 8 if score FOUND REG matches 0 run scoreboard players set CONTINUE REG 0
execute if score SIGN REG matches 8 run scoreboard players set FOUND REG 0
execute if score SIZE REG >= LEN REG run scoreboard players operation SIGN REG %= 8 CONST

execute if score SIZE REG >= LEN REG run scoreboard players set SIZE REG 0

execute if score CONTINUE REG matches 1 at @s run function aoc:sol_2019/day10/laser_destroy