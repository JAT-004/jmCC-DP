
# decrease bumber of open queue entries
scoreboard players remove queue.open jmcc.count 1
# reset queue tick counter if no queue entry if open
execute if score queue.open jmcc.count matches 0 run scoreboard players set queue.tick jmcc.count 0
# run all commands from this queue tick
$function jmcc:array/command {"path":"storage jmcc:data queue.$(tick)"}
# clear the entries
$data remove storage jmcc:data queue.$(tick)
