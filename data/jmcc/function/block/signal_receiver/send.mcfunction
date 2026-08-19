
# add tag
tag @s add jmcc.powered

# update receiver
data modify storage jmcc:data argument.array set from entity @s data.jmcc.connect
function jmcc:array/position {path:"storage jmcc:data argument.array",command:"function jmcc:block/signal_receiver/receive"}
