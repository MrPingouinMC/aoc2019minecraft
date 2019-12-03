#Since this function is reccusive, RINT REG need to ne initialized to 0 (TODO might need to change that)

function aoc:io/read_charint

execute if score RCHAR REG matches 0.. run scoreboard players operation RINT REG *= 10 CONST
execute if score RCHAR REG matches 0.. run function aoc:io/pop_char
execute if score RCHAR REG matches 0.. run scoreboard players operation RINT REG += RCHAR REG

execute store result score SIZE REG run data get storage io line
execute if score RCHAR REG matches 0.. if score SIZE REG matches 1.. run function aoc:io/read_int