
# prepare uuid hex format calculation
data modify storage jmcc:data argument.uuid set value {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}
data modify storage jmcc:data argument.input set from entity @s UUID

# calculate hex values
execute store result score input.0 jmcc.number store result score input.1 jmcc.number run data get storage jmcc:data argument.input[0]
execute store result storage jmcc:data argument.uuid.0 int 1 run scoreboard players operation input.0 jmcc.number %= static.256 jmcc.number
execute store result score input.2 jmcc.number run scoreboard players operation input.1 jmcc.number /= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.1 int 1 run scoreboard players operation input.1 jmcc.number %= static.256 jmcc.number
execute store result score input.3 jmcc.number run scoreboard players operation input.2 jmcc.number /= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.2 int 1 run scoreboard players operation input.2 jmcc.number %= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.3 int 1 run scoreboard players operation input.3 jmcc.number /= static.256 jmcc.number

execute store result score input.0 jmcc.number store result score input.1 jmcc.number run data get storage jmcc:data argument.input[1]
execute store result storage jmcc:data argument.uuid.4 int 1 run scoreboard players operation input.0 jmcc.number %= static.256 jmcc.number
execute store result score input.2 jmcc.number run scoreboard players operation input.1 jmcc.number /= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.5 int 1 run scoreboard players operation input.1 jmcc.number %= static.256 jmcc.number
execute store result score input.3 jmcc.number run scoreboard players operation input.2 jmcc.number /= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.6 int 1 run scoreboard players operation input.2 jmcc.number %= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.7 int 1 run scoreboard players operation input.3 jmcc.number /= static.256 jmcc.number

execute store result score input.0 jmcc.number store result score input.1 jmcc.number run data get storage jmcc:data argument.input[2]
execute store result storage jmcc:data argument.uuid.8 int 1 run scoreboard players operation input.0 jmcc.number %= static.256 jmcc.number
execute store result score input.2 jmcc.number run scoreboard players operation input.1 jmcc.number /= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.9 int 1 run scoreboard players operation input.1 jmcc.number %= static.256 jmcc.number
execute store result score input.3 jmcc.number run scoreboard players operation input.2 jmcc.number /= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.a int 1 run scoreboard players operation input.2 jmcc.number %= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.b int 1 run scoreboard players operation input.3 jmcc.number /= static.256 jmcc.number

execute store result score input.0 jmcc.number store result score input.1 jmcc.number run data get storage jmcc:data argument.input[3]
execute store result storage jmcc:data argument.uuid.c int 1 run scoreboard players operation input.0 jmcc.number %= static.256 jmcc.number
execute store result score input.2 jmcc.number run scoreboard players operation input.1 jmcc.number /= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.d int 1 run scoreboard players operation input.1 jmcc.number %= static.256 jmcc.number
execute store result score input.3 jmcc.number run scoreboard players operation input.2 jmcc.number /= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.e int 1 run scoreboard players operation input.2 jmcc.number %= static.256 jmcc.number
execute store result storage jmcc:data argument.uuid.f int 1 run scoreboard players operation input.3 jmcc.number /= static.256 jmcc.number

# transform decimal to hex number
function jmcc:argument/uuid/hex with storage jmcc:data argument.uuid
# combine hex number to uuid format
function jmcc:argument/uuid/format with storage jmcc:data argument.uuid
# save uuid to data
data modify entity @s data.jmcc.uuid set from storage jmcc:data argument.uuid
