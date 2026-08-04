
# cancel if maximum number of markers is reached
execute if score input.count jmcc.number >= input.limit jmcc.number run return fail
# cancel if block is not air
execute unless block ~ ~ ~ minecraft:air run return fail

# count this new marker
scoreboard players add input.count jmcc.number 1
# summon the next marker
summon marker ~ ~ ~ {Tags:["jmcc", "jmcc.fill", "jmcc.step"]}
# place structure_void to mark the block as counted
setblock ~ ~ ~ minecraft:structure_void replace
