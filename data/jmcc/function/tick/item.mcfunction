
# add tag
tag @s add jmcc

# process throw logic
execute if data entity @s Thrower if data entity @s Item.components."minecraft:custom_data".jmcc.on_throw run function jmcc:tick/thrown_item
