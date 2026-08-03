
execute if score input.fill jmcc.number matches 2048.. run return fail
execute unless block ~ ~ ~ minecraft:air run return fail

scoreboard players add input.fill jmcc.number 1
summon marker ~ ~ ~ {Tags:["jmcc", "jmcc.fill", "jmcc.step"]}
setblock ~ ~ ~ minecraft:structure_void replace
