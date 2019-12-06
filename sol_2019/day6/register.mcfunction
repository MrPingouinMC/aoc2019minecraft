#Need to be ran as a pointer entity

#function aoc:io/readpopline

function aoc:io/readpopline


scoreboard players set PL REG 0
function aoc:io/read_charcharint
function aoc:io/popchar
scoreboard players operation PL REG += RCHAR REG
scoreboard players operation PL REG *= 64 CONST

function aoc:io/read_charcharint
function aoc:io/popchar
scoreboard players operation PL REG += RCHAR REG
scoreboard players operation PL REG *= 64 CONST

function aoc:io/read_charcharint
function aoc:io/popchar
scoreboard players operation PL REG += RCHAR REG
#scoreboard players operation PL REG *= 64 CONST


function aoc:io/popchar


scoreboard players set PL2 REG 0
function aoc:io/read_charcharint
function aoc:io/popchar
scoreboard players operation PL2 REG += RCHAR REG
scoreboard players operation PL2 REG *= 64 CONST

function aoc:io/read_charcharint
function aoc:io/popchar
scoreboard players operation PL2 REG += RCHAR REG
scoreboard players operation PL2 REG *= 64 CONST

function aoc:io/read_charcharint
function aoc:io/popchar
scoreboard players operation PL2 REG += RCHAR REG
#scoreboard players operation PL2 REG *= 64 CONST

#tellraw @a ["Planets ",{"score":{"objective":"REG","name":"PL"}}, "    ", {"score":{"objective":"REG","name":"PL2"}}]
summon armor_stand 5 10 5 {NoGravity:1b,Marker:1b,Tags:["planet","to_process","to_init"]}

execute as @e[tag=to_init] run function aoc:sol_2019/day6/init_planet

execute store result score SIZE REG run data get storage io lines
execute if score SIZE REG matches 1.. run function aoc:sol_2019/day6/register
