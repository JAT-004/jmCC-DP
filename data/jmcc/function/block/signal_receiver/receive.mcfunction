
# check for signal receiver
execute unless block ~ ~ ~ #jmcc:signal_receiver run return fail

# activate
execute as @s[tag=jmcc.powered] if block ~ ~ ~ minecraft:lapis_block run setblock ~ ~ ~ minecraft:redstone_block replace

# deactivate
execute as @s[tag=!jmcc.powered] if block ~ ~ ~ minecraft:redstone_block run setblock ~ ~ ~ minecraft:lapis_block replace
