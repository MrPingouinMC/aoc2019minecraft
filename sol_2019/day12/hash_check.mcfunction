scoreboard players set COLIDE REG 0

execute store result score HASHCMP REG run data get block ~ ~ ~ RecordItem.tag.arr[0][1]
execute store result score HASHCMP2 REG run data get block ~ ~ ~ RecordItem.tag.arr[0][2]
execute if score HASHCMP REG = FULL_HASH REG if score HASHCMP2 REG = FULL_HASH2 REG run scoreboard players set COLIDE REG 1

execute if score COLIDE REG matches 0 run data modify block ~ ~ ~ RecordItem.tag.arr append from block ~ ~ ~ RecordItem.tag.arr[0]
execute if score COLIDE REG matches 0 run data remove block ~ ~ ~ RecordItem.tag.arr[0]

scoreboard players remove SIZE REG 1
execute if score COLIDE REG matches 0 if score SIZE REG matches 1.. run function aoc:sol_2019/day12/hash_check