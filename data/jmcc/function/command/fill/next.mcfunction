say next
# cancel if maximum number of markers is reached
$execute if score $(uuid) jmcc.count >= $(uuid) jmcc.limit run return fail
# cancel if block is not air
execute unless block ~ ~ ~ minecraft:air run return fail

# count this new marker
$scoreboard players add $(uuid) jmcc.count 1
# save position
$data modify entity $(uuid) data.jmcc.array append from entity @s Pos
# summon the next marker
$summon marker ~ ~ ~ {Tags:["jmcc", "jmcc.fill", "$(uuid)"]}
# place block
$setblock ~ ~ ~ $(block) replace
