
# save count to scoreboard
$scoreboard players set input.count jmcc.number $(count)

# use custom item id if provided
execute if data storage jmcc:data static.item.$(name) run return run function jmcc:command/item/with with storage jmcc:data static.item.$(name)

# use default item id
item replace entity @s weapon.mainhand with minecraft:flint 1

# change item components
$item modify entity @s weapon.mainhand jmcc:item/$(name)

# set count from scoreboard with item modifier
item modify entity @s weapon.mainhand jmcc:set_count
