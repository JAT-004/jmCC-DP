
# check key
$execute on attacker unless data entity @s SelectedItem.components."minecraft:custom_data".jmcc.key[{uuid:"$(uuid)"}] run return run function jmcc:command/hint {type:"info",translate:"jmcc.door.wrong_key"}

# unlock door
tag @s remove jmcc.locked

# message
execute on attacker run function jmcc:command/hint {type:"info",translate:"jmcc.door.unlocked"}

# sound
#xxx
