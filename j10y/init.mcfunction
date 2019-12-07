#Put your inputs in storage intcode.input

scoreboard players set POINTER REG 0
scoreboard players set LEN REG 2550
data modify storage intcode out set value []


kill @e[tag=pointer]
fill 10 0 10 10 255 10 red_concrete
summon armor_stand 10 0 10 {NoGravity:1b,Tags:[pointer],Marker:0b}