
# process step operation for all current fill events
execute as @e[type=minecraft:marker,tag=jmcc.fill,tag=jmcc.main] run function jmcc:command/fill/step with entity @s data.jmcc
# schedule next step
schedule function jmcc:command/fill/time 1s replace
