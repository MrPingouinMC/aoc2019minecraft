
execute as @e[tag=to_process,sort=random,limit=1] run function aoc:sol_2019/day6/calcrec


execute if entity @e[tag=to_process,limit=1] run function aoc:sol_2019/day6/calc
