scoreboard players set R REG 0
scoreboard players operation A REG = P1 REG
scoreboard players operation B REG = P2 REG
#tellraw @a ["testing starts ", {"score":{"objective":"REG","name":"P1"}}, " ", {"score":{"objective":"REG","name":"P1"}}]
function aoc:proc/gcd
scoreboard players set BOOL REG 0
execute if score R REG matches 1 run scoreboard players set BOOL REG 1
#execute if score R REG matches 1 run tellraw @a ["coprimes", {"score":{"objective":"REG","name":"P1"}}, " ", {"score":{"objective":"REG","name":"P2"}}]
#execute unless score R REG matches 1 run tellraw @a ["not coprimes", {"score":{"objective":"REG","name":"P1"}}, " ", {"score":{"objective":"REG","name":"P2"}}]