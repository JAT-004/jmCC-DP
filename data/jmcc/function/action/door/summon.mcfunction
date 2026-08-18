
# check for door
execute unless block ~ ~ ~ #minecraft:doors run return fail

# summon hitbox
summon interaction ~ ~-0.025 ~ {width:1.05f,height:2.05f,response:true,Tags:["jmcc", "jmcc.init"],data:{jmcc:{attack:{command:"function jmcc:action/door/attack with entity @s data.jmcc"},action:{command:"function jmcc:action/door/action with entity @s data.jmcc"}}}}

# initialize
execute as @e[type=minecraft:interaction,tag=jmcc.init] at @s run function jmcc:action/door/init
