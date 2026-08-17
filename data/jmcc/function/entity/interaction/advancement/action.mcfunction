
# revoke advancement
advancement revoke @s only jmcc:interaction/action

# run function
execute as @e[type=interaction,tag=jmcc,distance=..10] at @s if data entity @s interaction run function jmcc:entity/interaction/action with entity @s data.jmcc.action
