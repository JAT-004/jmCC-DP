
# check key
$execute on attacker store success score function.success jmcc.value run function jmcc:action/door/check {uuid:"$(uuid)"}
execute if score function.success jmcc.value matches 0 run return fail

# lock door
data modify storage jmcc:data argument.array set from entity @s data.jmcc.connect
function jmcc:array/target {path:"storage jmcc:data argument.array",command:"tag @s add jmcc.locked"}

# message
execute on attacker run function jmcc:command/hint {type:"info",translate:"jmcc.door.locked"}

# sound
#xxx
