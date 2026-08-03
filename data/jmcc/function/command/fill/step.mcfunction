
tag @s remove jmcc.step

execute positioned ~1 ~ ~ run function jmcc:command/fill/next
execute positioned ~-1 ~ ~ run function jmcc:command/fill/next
execute positioned ~ ~1 ~ run function jmcc:command/fill/next
execute positioned ~ ~-1 ~ run function jmcc:command/fill/next
execute positioned ~ ~ ~1 run function jmcc:command/fill/next
execute positioned ~ ~ ~-1 run function jmcc:command/fill/next

execute as @e[type=minecraft:marker, tag=jmcc.step] at @s run function jmcc:command/fill/step
