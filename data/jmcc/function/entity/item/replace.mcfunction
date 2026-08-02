
# save item count
execute store result score input.count jmcc.number run data get entity @s Item.count 1.0

# summon replacement
$loot spawn ~ ~ ~ loot $(replace)

# kill
kill @s
