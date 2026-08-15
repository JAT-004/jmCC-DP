
# jmCC-DP
`JATminecraftCityCore-DataPack`\
since 2026-08-01\
version: `0.0.0`

minimum minecraft version: `26.3-snapshot-7`\
maxmimum minecraft version: `26.3-snapshot-7`
## Command queue
Schedule commands at specific timestamps in the future.
### Arguments
argument `tick`: Int\
The number of ticks from now when the command should be scheduled.

argument `command`: String\
The command to schedule.
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
## Command projectile
Spawns and initializes a projectile.
### Arguments
argument `type`: String\
The projectile type, support for motion is necessary.

argument `uuid`: String\
The UUID of the projectile owner.

argument `speed`: Double\
The projectile speed.

argument `hover`: Boolean\
Sets the NoGravity parameter.

argument `death`: Int\
Duration until the projectile is killed. Use 0 for infinite duration.
### Scoreboards
scoreboard `anchor.x`\
scoreboard `anchor.y`\
scoreboard `anchor.z`\
Anchor position for motion calculation.

scoreboard `pos.x`\
scoreboard `pos.y`\
scoreboard `pos.z`\
Projectile start position for motion calculation.
### Examples
`/execute anchored eyes run function jmcc:command/projectile with storage jmcc:data argument`\
Creates a projectile with the parameters specfied within the storage `jmcc:data argument`.
## Command death
Schedule the death for an entity.
### Arguments
argument `uuid`: String\
The uuid of the target entity.

argument `death`: Int\
Time in ticks when the kill command will be triggered.
### Examples
`/function jmcc:command/death {uuid:"00000000-0000-0000-0000-000000000000",tick:200}`\
Kills the entity with the specified uuid after 200 ticks (10 seconds).
## Command setblock/door
Places a door.
### Arguments
argument `block`: String\
The door type.

argument `facing`: "north", "east", "south" or "west"\
argument `hinge`: "left" or "right"\
argument `open`: Boolean\
Specifies the blockstate.
### Examples
`/function jmcc:command/setblock/door {block:"minecraft:poplar_door",facing:"north",hinge:"left",open:"true"}`\
Places a `minecraft:poplar_door` with the specified blockstate.
## Command setblock/tall_plant
Places a block with a lower and upper half.
### Arguments
argument `block`: String\
Specifies the plant type.
### Examples
`/function jmcc:command/setblock/tall_plant {block:"minecraft:lilac"}`\
Places lower an upper half of a `minecraft:lilac`.

`/function jmcc:command/setblock/tall_plant {block:"minecraft:large_fern"}`\
Places lower an upper half of a `minecraft:large_fern`.
## Command explosion
Summons an explosion at the current location.
### Arguments
argument `power`: Double\
Specifies the explosion power.
### Examples
`/function jmcc:command/explosion {power:4}`\
Summons an explosion with the power of a single `minecraft:tnt` block.
## Command fill
Fills an area with the specified block, only replaces `minecraft:air`. Expands from the start position at each timer interval.
### Arguments
argument `limit`: Int\
The maximum number of blocks that will be placed.

argument `block`: String\
The type of block that will be placed.
### Scoreboards
scoreboard `jmcc.limit`\
Saves the maximum number of blocks that should be placed by the fill command.

scoreboard `jmcc.count`\
Counts the number of placed blocks.
### Examples
`/function jmcc:command/fill {limit:8,block:"minecraft:white_stained_glass"}`\
Fills an empty area with `minecraft:white_stained_glass` while placing at maximum 8 blocks.
## Command run
Executes a command from a macro.
### Arguments
argument `command`: String\
The command that will be executed.
### Examples
`/function jmcc:command/run {command:"say Hello"}`\
Executes the command `/say Hello`.

`/function jmcc:command/run {command:"function jmcc:command/run {command:'say Hello'}"}`\
Executes a function with arguments.
