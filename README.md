
# jmCC-DP
## Command queue
Schedule commands at specific timestamps in the future.
### Scoreboards
scoreboard `queue.tick jmcc.count`\
Counts the time in ticks to schedule commands in the queue.

scoreboard `queue.next jmcc.count`\
Used to calculate the time when adding a command to the queue.

scoreboard `queue.open jmcc.count`\
Counts how many different timestamps are open in the queue. Used to reset the scoreboard `queue.tick jmcc.count`.
### Storage
storage `jmcc:data argument.tick`\
storage `jmcc:data argument.next`\
storage `jmcc:data argument.command`\
The functions include these storage paths for macro usage.
### Examples
`/function jmcc:command/queue {tick:200,command:"say Hello"}`\
Queue the command `/say Hello` for 200 ticks (10 seconds).

`/function jmcc:command/queue {tick:100,command:"function jmcc:command/queue {tick:100,command:'say Hi'}"}`\
Add another queue command to the queue. The command `/say Hi` will run in 100 + 100 = 200 ticks (10 seconds).
