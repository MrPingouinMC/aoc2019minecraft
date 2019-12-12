function aoc:io/read_charint

execute store result score SIZE REG run data get storage io line
execute if score RCHAR REG matches -1 run function aoc:io/popchar
execute if score RCHAR REG matches -1 if score SIZE REG matches 1.. run function aoc:io/skip_non_number