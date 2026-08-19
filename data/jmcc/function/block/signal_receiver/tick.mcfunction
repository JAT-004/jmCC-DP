
# stop power transmission
execute as @s[tag=jmcc.powered] if block ~ ~ ~ minecraft:note_block[powered=false] run function jmcc:block/signal_receiver/cancel

# start power transmission
execute as @s[tag=!jmcc.powered] if block ~ ~ ~ minecraft:note_block[powered=true] run function jmcc:block/signal_receiver/send
