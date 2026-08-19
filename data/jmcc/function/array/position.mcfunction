
# save position as argument
$data modify storage jmcc:data argument.x set from $(path)[-1].x
$data modify storage jmcc:data argument.y set from $(path)[-1].y
$data modify storage jmcc:data argument.z set from $(path)[-1].z
# save command as argument
$data modify storage jmcc:data argument.command set value "$(command)"
# run command at position
function jmcc:command/at with storage jmcc:data argument
# delete last array entry
$data remove $(path)[-1]
# repeat if another entry is present
$execute if data $(path)[-1] run function jmcc:array/position {path:"$(path)",command:"$(command)"}
