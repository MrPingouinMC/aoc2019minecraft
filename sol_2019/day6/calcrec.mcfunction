
#tellraw @a ["Process ",{"score":{"objective":"ID","name":"@s"}}, " ", {"score":{"objective":"CHILD","name":"@s"}}]

scoreboard players operation TARGET REG = @s CHILD
scoreboard players set R REG 0
execute as @e[tag=planet] if score TARGET REG = @s ID run function aoc:sol_2019/day6/found

scoreboard players add R REG 1
scoreboard players operation @s ORBITS = R REG
#tellraw @a ["END SCORE ",{"score":{"objective":"ID","name":"@s"}}, " ", {"score":{"objective":"ORBITS","name":"@s"}}]

tag @s remove to_process