
# get yaw
execute store result score rotation.yaw jmcc.value run data get entity @s Rotation[0] 1000.0

# north
execute if score rotation.yaw jmcc.value matches ..-135000 run return 0
# east
execute if score rotation.yaw jmcc.value matches ..-45000 run return 1
# south
execute if score rotation.yaw jmcc.value matches ..45000 run return 2
# west
execute if score rotation.yaw jmcc.value matches ..135000 run return 3
# north
return 0
