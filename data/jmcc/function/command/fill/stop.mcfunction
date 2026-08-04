say stop
# remove tag
tag @s remove jmcc.main
# remove all open markers
$kill @e[type=minecraft:marker,tag=jmcc.fill,tag=$(uuid)]
# stop recursion if no fill operations are open
execute unless entity @e[type=minecraft:marker,tag=jmcc.fill,tag=jmcc.main] run schedule clear jmcc:command/fill/time
