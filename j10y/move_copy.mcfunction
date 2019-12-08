
#Move the pointer on the X axis to store it.


scoreboard players set POSX REG 10
scoreboard players operation POSX REG += COPY REG
execute store result entity @s Pos[0] double 1 run scoreboard players get POSX REG