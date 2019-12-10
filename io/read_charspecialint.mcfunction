scoreboard players set RCHAR REG -1


data modify storage minecraft:proc char set from storage minecraft:io line[0]
execute if data storage minecraft:proc {"char":"."} run scoreboard players set RCHAR REG 0 
execute if data storage minecraft:proc {"char":"#"} run scoreboard players set RCHAR REG 1 

#Content of chars beyond this may change as they aren't used yet
execute if data storage minecraft:proc {"char":"!"} run scoreboard players set RCHAR REG 2 
execute if data storage minecraft:proc {"char":"?"} run scoreboard players set RCHAR REG 3
execute if data storage minecraft:proc {"char":"$"} run scoreboard players set RCHAR REG 4
execute if data storage minecraft:proc {"char":"+"} run scoreboard players set RCHAR REG 5
execute if data storage minecraft:proc {"char":"-"} run scoreboard players set RCHAR REG 6
execute if data storage minecraft:proc {"char":"*"} run scoreboard players set RCHAR REG 7
execute if data storage minecraft:proc {"char":"/"} run scoreboard players set RCHAR REG 8
execute if data storage minecraft:proc {"char":"%"} run scoreboard players set RCHAR REG 9
execute if data storage minecraft:proc {"char":"="} run scoreboard players set RCHAR REG 10
execute if data storage minecraft:proc {"char":" "} run scoreboard players set RCHAR REG 11