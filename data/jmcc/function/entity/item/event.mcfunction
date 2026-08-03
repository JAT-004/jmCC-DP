
# save item count
execute store result score input.count jmcc.number run data get entity @s Item.count 1.0

# sound
$execute if data $(path).sound run function jmcc:command/sound with $(path).sound

# loot
$execute if data $(path).loot run function jmcc:command/loot with $(path)

# delete item
$execute if data $(path).delete run kill @s