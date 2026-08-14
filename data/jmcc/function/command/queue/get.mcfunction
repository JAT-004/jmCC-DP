
# save current queue tick as argument
execute store result storage jmcc:data argument.tick int 1.0 run scoreboard players get queue.tick jmcc.count
# execute all commands from the queue for the current tick
function jmcc:command/queue/run with storage jmcc:data argument
