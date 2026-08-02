
# sound
execute if data entity @s Item.components."minecraft:custom_data".jmcc.on_throw.sound run function jmcc:command/sound with entity @s Item.components."minecraft:custom_data".jmcc.on_throw

# replace items, kills this entity
execute if data entity @s Item.components."minecraft:custom_data".jmcc.on_throw.replace run function jmcc:entity/item/replace with entity @s Item.components."minecraft:custom_data".jmcc.on_throw
