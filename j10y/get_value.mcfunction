#Return value at POS in R score
scoreboard players operation MOD REG = POS REG
scoreboard players operation MOD REG %= 10 CONST

execute if score MOD REG matches 0 store result score R REG run data get block ~ ~ ~ RecordItem.tag.0
execute if score MOD REG matches 1 store result score R REG run data get block ~ ~ ~ RecordItem.tag.1
execute if score MOD REG matches 2 store result score R REG run data get block ~ ~ ~ RecordItem.tag.2
execute if score MOD REG matches 3 store result score R REG run data get block ~ ~ ~ RecordItem.tag.3
execute if score MOD REG matches 4 store result score R REG run data get block ~ ~ ~ RecordItem.tag.4
execute if score MOD REG matches 5 store result score R REG run data get block ~ ~ ~ RecordItem.tag.5
execute if score MOD REG matches 6 store result score R REG run data get block ~ ~ ~ RecordItem.tag.6
execute if score MOD REG matches 7 store result score R REG run data get block ~ ~ ~ RecordItem.tag.7
execute if score MOD REG matches 8 store result score R REG run data get block ~ ~ ~ RecordItem.tag.8
execute if score MOD REG matches 9 store result score R REG run data get block ~ ~ ~ RecordItem.tag.9