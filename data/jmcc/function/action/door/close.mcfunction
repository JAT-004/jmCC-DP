
# change state
data modify entity @s data.jmcc.open set value "false"

# set door
execute positioned ~ ~1 ~ run function jmcc:command/setblock/door with entity @s data.jmcc

# lock door
tag @s[tag=jmcc.autolock] add jmcc.locked
