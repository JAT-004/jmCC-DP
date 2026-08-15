
# summon anchor
$summon minecraft:marker ^ ^ ^$(speed) {UUID:[I;0,0,0,0]}

# get anchor position
execute store result score anchor.x jmcc.value run data get entity 00000000-0000-0000-0000-000000000000 Pos[0] 100000.0
execute store result score anchor.y jmcc.value run data get entity 00000000-0000-0000-0000-000000000000 Pos[1] 100000.0
execute store result score anchor.z jmcc.value run data get entity 00000000-0000-0000-0000-000000000000 Pos[2] 100000.0

# kill anchor
kill 00000000-0000-0000-0000-000000000000

# summon projectile
$summon $(type) ^ ^ ^ {NoGravity:$(hover),Tags:["jmcc.shot","jmcc.init"],data:{jmcc:{owner:"$(uuid)"}}}
# initialize projectile
$execute as @e[type=$(type),tag=jmcc.shot,tag=jmcc.init] at @s run function jmcc:command/projectile/init {death:$(death)}
