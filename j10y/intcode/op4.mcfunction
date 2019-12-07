

function aoc:j10y/intcode/read_arg
data modify storage intcode out append value 0
execute store result storage intcode out[-1] int 1 run scoreboard players get R REG
excute if score DEBUG REG matches 1 run tellraw @a ["Set ouput : ",{"score":{"objective":"REG","name":"R"}}]
