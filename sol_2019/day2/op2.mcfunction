

say don't call that

execute store result score NB1 REG run data get storage minecraft:proc arr[1]

scoreboard players operation SHIFTV REG = NB1 REG
function aoc:sol_2019/day2/get_index
scoreboard players operation NB1 REG = R REG


execute store result score NB2 REG run data get storage minecraft:proc arr[2]

scoreboard players operation SHIFTV REG = NB2 REG
function aoc:sol_2019/day2/get_index
scoreboard players operation NB2 REG = R REG


execute store result score POS REG run data get storage minecraft:proc arr[3]

scoreboard players operation NB REG = NB1 REG
scoreboard players operation NB REG *= NB2 REG


tellraw @a ["State", {"score":{"objective":"REG","name":"V"}}, " ",{"score":{"objective":"REG","name":"NB1"}}, " ", {"score":{"objective":"REG","name":"NB2"}}]


scoreboard players operation SHIFT REG = POS REG
#scoreboard players operation SHIFT REG -= INDEX REG
function aoc:sol_2019/day2/shift

execute store result storage minecraft:proc arr[0] int 1 run scoreboard players get POS REG

scoreboard players operation SHIFT REG = POS REG
function aoc:sol_2019/day2/shift_back


#scoreboard players operation POS REG = R REG

#NO, NB is just an other variable name
#yeah POS is the reference
#yeah, I just have an array and I shift it to go to those references
#you will see
