
# remove data from entity
data remove entity @s interaction

# return if no actions are specified
execute unless data entity @s data.jmcc.action run return fail

# run command
execute if data entity @s data.jmcc.action.command run function jmcc:command/run with entity @s data.jmcc.action
