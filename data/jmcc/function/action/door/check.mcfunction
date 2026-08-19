
# check and return true if correct key is in mainhand
$execute if data entity @s SelectedItem.components."minecraft:custom_data".jmcc.key[{uuid:"$(uuid)"}] run return 1

# check and return true if correct key is in offhand
$execute if data entity @s equipment.offhand.components."minecraft:custom_data".jmcc.key[{uuid:"$(uuid)"}] run return 1

# show message for wrong key
function jmcc:command/hint {type:"info",translate:"jmcc.door.wrong_key"}

# return false
return fail
