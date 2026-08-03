
# add tag
tag @s add jmcc

# process throw event
$execute if data entity @s Thrower if data storage jmcc:data item.$(item).on_throw run function jmcc:entity/item/event {"path": "storage jmcc:data item.$(item).on_throw"}
