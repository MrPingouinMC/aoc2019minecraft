function aoc:io/readpopline


function aoc:io/skip_non_number
function aoc:io/read_signedint
scoreboard players operation X REG = RINT REG

function aoc:io/skip_non_number
function aoc:io/read_signedint
scoreboard players operation Y REG = RINT REG

function aoc:io/skip_non_number
function aoc:io/read_signedint
scoreboard players operation Z REG = RINT REG

summon minecraft:armor_stand 5 10 5 {NoGravity:1b,Tags:[moon,init]}
execute as @e[tag=moon,tag=init] run function aoc:sol_2019/day12/create_moon

scoreboard players remove LINES REG 1
execute if score LINES REG matches 1.. run function aoc:sol_2019/day12/parse
