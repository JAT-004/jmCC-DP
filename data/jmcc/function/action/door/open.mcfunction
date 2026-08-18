
# change state
data modify entity @s data.jmcc.open set value "true"

# set door
execute positioned ~ ~1 ~ run function jmcc:command/setblock/door with entity @s data.jmcc

# sound
#xxx
