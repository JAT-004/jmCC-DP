
# remove tag
tag @s remove jmcc.init

# save uuid
function projectiles:uuid
data modify entity @s data.jmcc.uuid set from storage jmcc:data argument.uuid

# get material
execute if block ~ ~1 ~ minecraft:oak_door run data modify entity @s data.jmcc.block set value "minecraft:oak_door"
execute if block ~ ~1 ~ minecraft:spruce_door run data modify entity @s data.jmcc.block set value "minecraft:spruce_door"
execute if block ~ ~1 ~ minecraft:birch_door run data modify entity @s data.jmcc.block set value "minecraft:birch_door"
execute if block ~ ~1 ~ minecraft:jungle_door run data modify entity @s data.jmcc.block set value "minecraft:jungle_door"
execute if block ~ ~1 ~ minecraft:acacia_door run data modify entity @s data.jmcc.block set value "minecraft:acacia_door"
execute if block ~ ~1 ~ minecraft:dark_oak_door run data modify entity @s data.jmcc.block set value "minecraft:dark_oak_door"
execute if block ~ ~1 ~ minecraft:mangrove_door run data modify entity @s data.jmcc.block set value "minecraft:mangrove_door"
execute if block ~ ~1 ~ minecraft:cherry_door run data modify entity @s data.jmcc.block set value "minecraft:cherry_door"
execute if block ~ ~1 ~ minecraft:pale_oak_door run data modify entity @s data.jmcc.block set value "minecraft:pale_oak_door"
execute if block ~ ~1 ~ minecraft:poplar_door run data modify entity @s data.jmcc.block set value "minecraft:poplar_door"
execute if block ~ ~1 ~ minecraft:bamboo_door run data modify entity @s data.jmcc.block set value "minecraft:bamboo_door"
execute if block ~ ~1 ~ minecraft:crimson_door run data modify entity @s data.jmcc.block set value "minecraft:crimson_door"
execute if block ~ ~1 ~ minecraft:warped_door run data modify entity @s data.jmcc.block set value "minecraft:warped_door"
execute if block ~ ~1 ~ minecraft:iron_door run data modify entity @s data.jmcc.block set value "minecraft:iron_door"
execute if block ~ ~1 ~ minecraft:copper_door run data modify entity @s data.jmcc.block set value "minecraft:copper_door"
execute if block ~ ~1 ~ minecraft:exposed_copper_door run data modify entity @s data.jmcc.block set value "minecraft:exposed_copper_door"
execute if block ~ ~1 ~ minecraft:weathered_copper_door run data modify entity @s data.jmcc.block set value "minecraft:weathered_copper_door"
execute if block ~ ~1 ~ minecraft:oxidized_copper_door run data modify entity @s data.jmcc.block set value "minecraft:oxidized_copper_door"
execute if block ~ ~1 ~ minecraft:waxed_copper_door run data modify entity @s data.jmcc.block set value "waxed_copper_door"
execute if block ~ ~1 ~ minecraft:waxed_exposed_copper_door run data modify entity @s data.jmcc.block set value "minecraft:waxed_exposed_copper_door"
execute if block ~ ~1 ~ minecraft:waxed_weathered_copper_door run data modify entity @s data.jmcc.block set value "minecraft:waxed_weathered_copper_door"
execute if block ~ ~1 ~ minecraft:waxed_oxidized_copper_door run data modify entity @s data.jmcc.block set value "minecraft:waxed_oxidized_copper_door"

# get facing
execute if block ~ ~1 ~ #doors[facing=east] run data modify entity @s data.jmcc.facing set value "east"
execute if block ~ ~1 ~ #doors[facing=north] run data modify entity @s data.jmcc.facing set value "north"
execute if block ~ ~1 ~ #doors[facing=south] run data modify entity @s data.jmcc.facing set value "south"
execute if block ~ ~1 ~ #doors[facing=west] run data modify entity @s data.jmcc.facing set value "west"

# get hinge
execute if block ~ ~1 ~ #doors[hinge=left] run data modify entity @s data.jmcc.hinge set value "left"
execute if block ~ ~1 ~ #doors[hinge=right] run data modify entity @s data.jmcc.hinge set value "right"
