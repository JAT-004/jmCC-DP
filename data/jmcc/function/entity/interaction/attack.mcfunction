
# remove data from entity
data remove entity @s attack

# return if no actions are specified
execute unless data entity @s data.jmcc.attack run return fail

# run command
execute if data entity @s data.jmcc.attack.command run function jmcc:command/run with entity @s data.jmcc.attack
