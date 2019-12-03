scoreboard players set RCHAR REG -1

data modify storage minecraft:proc char set from storage minecraft:io line[0]
execute if data storage minecraft:proc {"char":"0"} run scoreboard players set RCHAR REG 0 
execute if data storage minecraft:proc {"char":"1"} run scoreboard players set RCHAR REG 1 
execute if data storage minecraft:proc {"char":"2"} run scoreboard players set RCHAR REG 2 
execute if data storage minecraft:proc {"char":"3"} run scoreboard players set RCHAR REG 3
execute if data storage minecraft:proc {"char":"4"} run scoreboard players set RCHAR REG 4
execute if data storage minecraft:proc {"char":"5"} run scoreboard players set RCHAR REG 5
execute if data storage minecraft:proc {"char":"6"} run scoreboard players set RCHAR REG 6
execute if data storage minecraft:proc {"char":"7"} run scoreboard players set RCHAR REG 7
execute if data storage minecraft:proc {"char":"8"} run scoreboard players set RCHAR REG 8
execute if data storage minecraft:proc {"char":"9"} run scoreboard players set RCHAR REG 9
