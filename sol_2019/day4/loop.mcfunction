#Variant of part 1, but also store 


scoreboard players set VALID REG 1
scoreboard players set DB REG 0
scoreboard players set DOUBLE REG 0
scoreboard players set DBC REG 0
scoreboard players set MULT REG 10
scoreboard players set ADD REG 1

scoreboard players set LAST REG 10
scoreboard players operation VAL REG = PASS REG

function aoc:sol_2019/day4/valid

execute if score VALID REG matches 1 unless score VAL REG matches 1.. if score DBC REG matches 1.. run scoreboard players set DB REG 1
execute if score VALID REG matches 1 unless score VAL REG matches 1.. if score DBC REG matches 1 run scoreboard players set DOUBLE REG 1


execute if score VALID REG matches 1 if score DB REG matches 1 run scoreboard players add COUNT REG 1
execute if score VALID REG matches 1 if score DOUBLE REG matches 1 run scoreboard players add COUNT2 REG 1
#execute if score VALID REG matches 1 if score DOUBLE REG matches 1 run tellraw @a [{"score":{"objective":"REG","name":"PASS"}}]

scoreboard players add PASS REG 1
execute if score PASS REG <= END REG run function aoc:sol_2019/day4/loop
