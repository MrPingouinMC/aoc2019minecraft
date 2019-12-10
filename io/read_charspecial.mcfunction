#This is not reccursive.
#Catch only alpha numeric A-Za-z0-9 characters

scoreboard players set RINT REG 0
function aoc:io/read_charspecialint

execute if score RCHAR REG matches 0.. run function aoc:io/pop_char
execute if score RCHAR REG matches 0.. run scoreboard players operation RINT REG = RCHAR REG
