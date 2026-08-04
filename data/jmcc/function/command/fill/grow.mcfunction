say grow
# initialize next markers
$execute positioned ~1 ~ ~ run function jmcc:command/fill/next {"uuid":"$(uuid)","block":"$(block)"}
$execute positioned ~-1 ~ ~ run function jmcc:command/fill/next {"uuid":"$(uuid)","block":"$(block)"}
$execute positioned ~ ~1 ~ run function jmcc:command/fill/next {"uuid":"$(uuid)","block":"$(block)"}
$execute positioned ~ ~-1 ~ run function jmcc:command/fill/next {"uuid":"$(uuid)","block":"$(block)"}
$execute positioned ~ ~ ~1 run function jmcc:command/fill/next {"uuid":"$(uuid)","block":"$(block)"}
$execute positioned ~ ~ ~-1 run function jmcc:command/fill/next {"uuid":"$(uuid)","block":"$(block)"}

# kill marker
kill @s[tag=!jmcc.main]
