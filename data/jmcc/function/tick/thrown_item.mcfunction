
# sound
$execute if data storage jmcc:data item.$(item).on_throw.sound run function jmcc:command/sound with storage jmcc:data item.$(item).on_throw.sound

# replace items, kills this entity
$execute if data storage jmcc:data item.$(item).on_throw.replace run function jmcc:entity/item/replace with storage jmcc:data item.$(item).on_throw
