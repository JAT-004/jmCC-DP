
# reset scoreboard for counting the markers
scoreboard players set input.count jmcc.number 0

# set limit for number of markers
scoreboard players set input.limit jmcc.number 96

# summon first marker at current position
execute align xyz run function jmcc:command/fill/next

# empty the list for saving all positions
data modify storage jmcc:data argument.array set value []

# run recursive search for blocks
execute as @e[type=minecraft:marker, tag=jmcc.step] at @s run function jmcc:command/fill/step

# clean up after the search
execute as @e[type=minecraft:marker, tag=jmcc.fill] at @s run function jmcc:command/fill/finish
