
#tellraw @a ["FOUND ",{"score":{"objective":"ID","name":"@s"}}]


execute if entity @s[tag=to_process] run function aoc:sol_2019/day6/calcrec

scoreboard players operation R REG = @s ORBITS


#tag @s remove to_process