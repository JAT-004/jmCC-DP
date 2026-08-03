
scoreboard players set input.fill jmcc.number 0

function jmcc:command/fill/next

execute as @e[type=minecraft:marker, tag=jmcc.step] at @s run function jmcc:command/fill/step
