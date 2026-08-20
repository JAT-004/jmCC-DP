
# save previous slot
scoreboard players operation @s jmcc.slot_previous = @s jmcc.slot_current
# save current slot
execute store result score @s jmcc.slot_current run data get entity @s SelectedItemSlot 1.0

# reset change
scoreboard players set @s jmcc.slot_change 0
# check for change
execute if score @s jmcc.slot_previous = @s jmcc.slot_current run return 1
# prepare calculation
scoreboard players operation @s jmcc.slot_change = @s jmcc.slot_previous
# calculate change
scoreboard players operation @s jmcc.slot_change -= @s jmcc.slot_current
# return success
return 1
