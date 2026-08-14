
# run command from last array entry
$function jmcc:command/run with $(path)[-1]
# delete last array entry
$data remove $(path)[-1]
# repeat if another entry is present
$execute if data $(path)[-1] run function jmcc:array/command {path:"$(path)"}
