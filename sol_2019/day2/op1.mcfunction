


#Hanlde operation 1 and 2


execute store result score NB1 REG run data get storage minecraft:proc arr[1]

scoreboard players operation SHIFT REG = NB1 REG
function aoc:sol_2019/day2/get_index
scoreboard players operation NB11 REG = R REG


execute store result score NB2 REG run data get storage minecraft:proc arr[2]

scoreboard players operation SHIFT REG = NB2 REG
function aoc:sol_2019/day2/get_index
scoreboard players operation NB21 REG = R REG


execute store result score POS REG run data get storage minecraft:proc arr[3]

scoreboard players operation NB REG = NB11 REG
execute if score OP REG matches 1 run scoreboard players operation NB REG += NB21 REG
execute if score OP REG matches 2 run scoreboard players operation NB REG *= NB21 REG


#tellraw @a ["State", {"score":{"objective":"REG","name":"OP"}}, " ",{"score":{"objective":"REG","name":"NB1"}}, " ", {"score":{"objective":"REG","name":"NB2"}}, " ",{"score":{"objective":"REG","name":"NB11"}}, " ", {"score":{"objective":"REG","name":"NB21"}}, " Pos:", {"score":{"objective":"REG","name":"POS"}}]
#Don't know why, but my NBs have a value of 4

scoreboard players operation V REG = NB REG
scoreboard players operation SHIFT REG = POS REG
function aoc:sol_2019/day2/set_index
