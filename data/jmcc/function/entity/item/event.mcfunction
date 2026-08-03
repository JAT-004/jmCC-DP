
# cancel if not on ground
$execute if data $(path).on_ground unless data entity @s {"OnGround":true} run return run tag @s remove jmcc 

# save item count
execute store result score input.count jmcc.number run data get entity @s Item.count 1.0

# sound
$execute if data $(path).sound run function jmcc:command/sound with $(path).sound

# loot
$execute if data $(path).loot run function jmcc:command/loot with $(path)

# explosion
$execute if data $(path).explosion run function jmcc:command/explosion with $(path).explosion

# delete item
$execute if data $(path).delete run kill @s