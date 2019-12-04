


execute store result score X1 REG run data get storage minecraft:proc arr[0].x
execute store result score X2 REG run data get storage minecraft:proc arr[1].x
execute store result score Y1 REG run data get storage minecraft:proc arr[0].y
execute store result score Y2 REG run data get storage minecraft:proc arr[1].y

#PART2
execute if score PART REG matches 2 store result score WIRE1 REG run data get storage minecraft:proc arr[0].p


scoreboard players set D1 REG 0
scoreboard players set D2 REG 0
scoreboard players set CROSS REG 0

#Intersection point of the lines.
scoreboard players set INX REG 0
scoreboard players set INY REG 0
#If the current wire go in oposite directions : 


#Base equation : abs(a-c) + abs(b-c) = abs(b-a)
execute if score X1 REG = X2 REG if score GDIR REG matches 0 if score INDEX REG matches 1.. run function aoc:sol_2019/day3/interxy
execute if score Y1 REG = Y2 REG if score GDIR REG matches 1 if score INDEX REG matches 1.. run function aoc:sol_2019/day3/interyx


execute if score X1 REG = X2 REG if score GDIR REG matches 0 run scoreboard players operation INX REG = X1
execute if score X1 REG = X2 REG if score GDIR REG matches 0 run scoreboard players operation INY REG = POSY

execute if score Y1 REG = Y2 REG if score GDIR REG matches 1 run scoreboard players operation INX REG = POSX
execute if score Y1 REG = Y2 REG if score GDIR REG matches 1 run scoreboard players operation INY REG = Y1

#Not handling these case if the problem does not require me to do so.
execute if score X1 REG = X2 REG if score X1 REG = POSX REG if score GDIR REG matches 1 run say same case 1
execute if score Y1 REG = Y2 REG if score Y1 REG = POSY REG if score GDIR REG matches 0 run say same case 2

#execute if score Y1 REG = Y2 REG if score Y1 REG = POSY REG if score GDIR REG matches 0 run tellraw @a ["same 2 : ", {"score":{"objective":"REG","name":"Y1"}}, ", ", {"score":{"objective":"REG","name":"POSX"}}, ", " , {"score":{"objective":"REG","name":"LAST_POSX"}}, ", ", {"score":{"objective":"REG","name":"X1"}},", ", {"score":{"objective":"REG","name":"X2"}}]

execute if score CROSS REG matches 1 if score INX REG matches ..0 run scoreboard players operation INX REG *= -1 CONST
execute if score CROSS REG matches 1 if score INY REG matches ..0 run scoreboard players operation INY REG *= -1 CONST

execute if score CROSS REG matches 1 run scoreboard players operation D REG = INX REG
execute if score CROSS REG matches 1 run scoreboard players operation D REG += INY REG


#execute if score CROSS REG matches 1 run say crossing




execute if score D REG < MIN REG run scoreboard players operation MIN REG = D REG

data modify storage minecraft:proc arr append from storage minecraft:proc arr[0]
data remove storage minecraft:proc arr[0]
scoreboard players remove SHIFT REG 1
#Only the consecutive pairs are read so we stopping early
execute if score SHIFT REG matches 2.. run function aoc:sol_2019/day3/intersect