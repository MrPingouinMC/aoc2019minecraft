data modify storage io bint append value 0
scoreboard players operation LOAD REG = RLOAD REG
scoreboard players operation LOAD REG %= BINT CONST
scoreboard players operation RLOAD REG /= BINT CONST

scoreboard players add APPEND REG 1

execute store result storage io bint[-1] int 1 run scoreboard players get LOAD REG