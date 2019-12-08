

execute store result score POINTER REG run data get block 10 0 11 RecordItem.tag.pointer
execute store result score LEN REG run data get block 10 0 11 RecordItem.tag.len

data modify storage minecraft:intcode out set from block 10 0 11 RecordItem.tag.out
data modify storage minecraft:intcode in set from block 10 0 11 RecordItem.tag.in

#tellraw @a ["Loaded state : ", {"nbt":"RecordItem.tag","block":"10 0 11"}]