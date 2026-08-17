
# revoke advancement
advancement revoke @s only jmcc:interaction/attack

# run function
execute as @e[type=interaction,tag=jmcc,distance=..10] at @s if data entity @s attack run function jmcc:entity/interaction/attack with entity @s data.jmcc.attack
