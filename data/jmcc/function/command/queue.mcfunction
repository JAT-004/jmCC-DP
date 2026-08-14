
# start calculation of the tick for scheduling the command
$scoreboard players set queue.next jmcc.count $(tick)
# add current number of ticks
scoreboard players operation queue.next jmcc.count += queue.tick jmcc.count
# save result as argument
execute store result storage jmcc:data argument.next int 1.0 run scoreboard players get queue.next jmcc.count
# save tick input as argument
$data modify storage jmcc:data argument.tick set value $(tick)
# save command as argument
$data modify storage jmcc:data argument.command set value "$(command)"
# add command to queue
function jmcc:command/queue/add with storage jmcc:data argument
