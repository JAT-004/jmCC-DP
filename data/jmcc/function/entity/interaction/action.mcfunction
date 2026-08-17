
# run command
execute if data entity @s data.jmcc.action.command run function jmcc:command/run with entity @s data.jmcc.action

# remove data from entity
data remove entity @s interaction
