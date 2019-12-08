
execute at @s run setblock ~ 0 ~1 stone
execute at @s run setblock ~ 0 ~1 minecraft:jukebox{RecordItem:{id:"pufferfish",Count:1,tag:{}}}

execute store result block 10 0 11 RecordItem.tag.pointer int 1 run scoreboard players get POINTER REG
execute store result block 10 0 11 RecordItem.tag.len int 1 run scoreboard players get LEN REG
data modify block 10 0 11 RecordItem.tag.out set from storage minecraft:intcode out
data modify block 10 0 11 RecordItem.tag.in set from storage minecraft:intcode in

#tellraw @a ["Saved state : ", {"nbt":"RecordItem.tag","block":"10 0 11"}]