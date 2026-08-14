
# if no command is currently scheduled for this tick increase counter
$execute unless data storage jmcc:data queue.$(next) run scoreboard players add queue.open jmcc.count 1
# append command to list
$data modify storage jmcc:data queue.$(next) append value {"command":"$(command)"}
# schedule execution for the specific tick
$schedule function jmcc:command/queue/get $(tick) append
