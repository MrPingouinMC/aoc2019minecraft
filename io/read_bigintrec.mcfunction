
function aoc:io/read_charint

execute if score RCHAR REG matches 0.. run scoreboard players operation RLOAD REG *= 10 CONST
execute if score RCHAR REG matches 0.. run function aoc:io/pop_char
execute if score RCHAR REG matches 0.. run scoreboard players operation RLOAD REG += RCHAR REG
execute if score RLOAD REG > BINT CONST run function aoc:io/read_bigint_append

execute store result score SIZE REG run data get storage io line
execute if score RCHAR REG matches 1.. if score SIZE REG matches 1.. run function aoc:io/read_bigintrec