
# unlock door
execute as @s[tag=jmcc.locked] if block ~ ~1 ~ #minecraft:doors[open=false] run return run function jmcc:action/door/unlock with entity @s data.jmcc

# lock door
execute as @s[tag=!jmcc.locked] if block ~ ~1 ~ #minecraft:doors[open=false] run return run function jmcc:action/door/lock with entity @s data.jmcc

# message if door is open
execute on attacker run function jmcc:command/hint {type:"info",translate:"jmcc.door.close_before_locking"}
