
# save position
data modify storage jmcc:data argument.array append from entity @s Pos

# remove structure_void
setblock ~ ~ ~ minecraft:air replace

# remove marker
kill @s
