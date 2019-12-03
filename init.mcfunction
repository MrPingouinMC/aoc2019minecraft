gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
#gamerule logAdminCommands false

gamerule maxCommandChainLength 65000000

scoreboard objectives add REG dummy
scoreboard objectives add CONST dummy


scoreboard players set 2 CONST 2
scoreboard players set 3 CONST 3
scoreboard players set 4 CONST 4
scoreboard players set 10 CONST 10
scoreboard players set 100 CONST 100
scoreboard players set 1000 CONST 1000

function aoc:init_inputs
