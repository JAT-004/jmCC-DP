say fill
# summon main marker at start position
$execute align xyz run summon marker ~ ~ ~ {Tags:["jmcc","jmcc.main","jmcc.fill","jmcc.init"],data:{"jmcc":{"block":"$(block)"}}}
# initialize marker
$execute as @e[type=minecraft:marker,tag=jmcc.fill,tag=jmcc.init] at @s run function jmcc:command/fill/init {"limit":$(limit)}
# start recursion
schedule function jmcc:command/fill/time 1s replace
