say init
# remove tag
tag @s remove jmcc.init
# get uuid
function jmcc:argument/uuid
# save uuid
data modify entity @s data.jmcc.uuid set from storage jmcc:data argument.uuid
# save limit
$scoreboard players set @s jmcc.limit $(limit)
# process current position
function jmcc:command/fill/next with entity @s data.jmcc
# first step
function jmcc:command/fill/step with entity @s data.jmcc
