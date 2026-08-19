
# get pitch
execute store result score rotation.pitch jmcc.value run data get entity @s Rotation[1] 1000.0

# look upwards
execute if score rotation.pitch jmcc.value matches ..-45000 run return 1
# look downwards
execute if score rotation.pitch jmcc.value matches 45000.. run return -1
# look horizontally
return 0
