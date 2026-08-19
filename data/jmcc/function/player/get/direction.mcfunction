
# get yaw
execute store result score fun.result jmcc.value run function jmcc:player/get/rotation_yaw
# north
execute if score fun.result jmcc.value matches 0 run data modify storage jmcc:data argument.relative set value "~ ~ ~-1"
# east
execute if score fun.result jmcc.value matches 1 run data modify storage jmcc:data argument.relative set value "~1 ~ ~"
# south
execute if score fun.result jmcc.value matches 2 run data modify storage jmcc:data argument.relative set value "~ ~ ~1"
# west
execute if score fun.result jmcc.value matches 3 run data modify storage jmcc:data argument.relative set value "~-1 ~ ~"

# get pitch
execute store result score fun.result jmcc.value run function jmcc:player/get/rotation_pitch
# down
execute if score fun.result jmcc.value matches -1 run data modify storage jmcc:data argument.relative set value "~ ~-1 ~"
# up
execute if score fun.result jmcc.value matches 1 run data modify storage jmcc:data argument.relative set value "~ ~1 ~"

# return success
return 1
