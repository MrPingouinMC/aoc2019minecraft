#Put your inputs in storage intcode.input


scoreboard players set COPY REG -1
scoreboard players set POINTER REG 0
scoreboard players set LEN REG 2550
data modify storage intcode out set value []
data modify storage intcode in set value []


kill @e[tag=pointer]
fill 10 0 10 10 255 10 red_concrete
fill 10 0 10 10 255 10 cyan_concrete
summon armor_stand 10 0 10 {NoGravity:1b,Tags:[pointer],Marker:0b}