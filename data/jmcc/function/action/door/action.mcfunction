
# close door
execute if block ~ ~1 ~ #minecraft:doors[open=true,powered=false] run return run function jmcc:action/door/close with entity @s data.jmcc

# message if door is opened by redstone signal
execute if block ~ ~1 ~ #minecraft:doors[open=true,powered=true] on target run return run function jmcc:command/hint {type:"info",translate:"jmcc.door.electrically_operated"}

# open door
execute as @s[tag=!jmcc.locked] run return run function jmcc:action/door/open with entity @s data.jmcc

# message if door is locked
execute on target run function jmcc:command/hint {type:"info",translate:"jmcc.door.is_locked"}

# sound
#xxx
