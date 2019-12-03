#Return 0 in the content of cmp1 and cmp2 are the same.
#This function will alter the content of cmp2 
scoreboard players set R REG 0
execute store success score R REG run data modify storage minecraft:proc cmp2 set from storage minecraft:proc cmp1