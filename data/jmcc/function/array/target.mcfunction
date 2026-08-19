
# save target as argument
$data modify storage jmcc:data argument.target set from $(path)[-1]
# save command as argument
$data modify storage jmcc:data argument.command set value "$(command)"
# run command as and at target
function jmcc:command/as with storage jmcc:data argument
# delete last array entry
$data remove $(path)[-1]
# repeat if another entry is present
$execute if data $(path)[-1] run function jmcc:array/target {path:"$(path)",command:"$(command)"}
