
# remove tag
tag @s remove jmcc.init

# get position
execute store result score pos.x jmcc.value run data get entity @s Pos[0] 100000.0
execute store result score pos.y jmcc.value run data get entity @s Pos[1] 100000.0
execute store result score pos.z jmcc.value run data get entity @s Pos[2] 100000.0

# calculate distance
scoreboard players operation pos.x jmcc.value -= anchor.x jmcc.value
scoreboard players operation pos.y jmcc.value -= anchor.y jmcc.value
scoreboard players operation pos.z jmcc.value -= anchor.z jmcc.value

# save motion
execute store result entity @s Motion[0] double -0.00001 run scoreboard players get pos.x jmcc.value
execute store result entity @s Motion[1] double -0.00001 run scoreboard players get pos.y jmcc.value
execute store result entity @s Motion[2] double -0.00001 run scoreboard players get pos.z jmcc.value

# copy motion
data modify entity @s data.jmcc.motion set from entity @s Motion

# get uuid
function jmcc:argument/uuid

# schedule death if duration > 0
$execute unless score static.0 jmcc.value matches $(death).. run function jmcc:command/death with storage jmcc:data argument
