
# replace items
execute if data entity @s Item.components."minecraft:custom_data".jmcc.on_throw.replace run function jmcc:entity/item/replace {"replace": "jmcc:item/broken_plate"}
