scoreboard players operation MOD REG = VAL REG
scoreboard players operation MOD REG %= 10 CONST

execute if score MOD REG = LAST REG run scoreboard players add DBC REG 1



execute unless score MOD REG = LAST REG if score DBC REG matches 1.. run scoreboard players set DB REG 1
execute unless score MOD REG = LAST REG if score DBC REG matches 1 run scoreboard players set DOUBLE REG 1
#execute if score DBC REG mactches 2.. run scoreboard players set TRIBLE REG 1



execute unless score MOD REG = LAST REG run scoreboard players set DBC REG 0


execute if score MOD REG > LAST REG run scoreboard players set VALID REG 0
execute if score MOD REG > LAST REG run function aoc:sol_2019/day4/regulate


scoreboard players operation LAST REG = MOD REG
scoreboard players operation VAL REG -= MOD REG
scoreboard players operation VAL REG /= 10 CONST
scoreboard players operation MULT REG *= 10 CONST
scoreboard players operation ADD REG *= 10 CONST
scoreboard players operation ADD REG += 1 CONST
execute if score VALID REG matches 1 if score VAL REG matches 1.. run function aoc:sol_2019/day4/valid



