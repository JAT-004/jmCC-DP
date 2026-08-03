
# add tag
tag @s add jmcc

# process throw logic
$execute if data entity @s Thrower if data storage jmcc:data item.$(item).on_throw run function jmcc:tick/thrown_item with storage jmcc:data item.$(item)
