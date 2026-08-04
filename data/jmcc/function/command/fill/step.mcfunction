say step
# process all markers for this step
$execute as @e[type=minecraft:marker,tag=jmcc.fill,tag=$(uuid)] at @s run function jmcc:command/fill/grow {"uuid":"$(uuid)","block":"$(block)"}
# stop recursion
$execute if score @s jmcc.count >= @s jmcc.limit run function jmcc:command/fill/stop {"uuid":"$(uuid)"}
