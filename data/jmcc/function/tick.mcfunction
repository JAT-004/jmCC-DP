
# player save selected slot
execute as @a run function jmcc:player/get/_selected_slot

# incearse queue tick
scoreboard players add queue.tick jmcc.count 1

# process new items within the world
execute as @e[type=minecraft:item, tag=!jmcc] at @s run function jmcc:tick/item with entity @s Item.components."minecraft:custom_data".jmcc
