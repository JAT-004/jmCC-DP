
# use custom item id
$item replace entity @s weapon.mainhand with $(id) 1

# change item components
$item modify entity @s weapon.mainhand jmcc:item/$(name)

# set count from scoreboard with item modifier
item modify entity @s weapon.mainhand jmcc:set_count
