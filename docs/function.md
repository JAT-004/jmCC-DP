
# Player

## get/_slected_slot
Saves the currently and previously selected item slot and calculates the difference.

target: `player`\
location: `x x x`
### Scoreboard
scoreboard `@s jmcc.slot_current`\
scoreboard `@s jmcc.slot_previous`\
scoreboard `@s jmcc.slot_change`
### Return
value `1`: success

## get/scroll_direction
Checks if the player scrolled and in which direction.

target: `player`\
location: `x x x`
### Scoreboard
scoreboard `@s jmcc.slot_change`
### Return
value `0`: player did not scroll\
value `1`: scroll forward/ left\
value `-1`: scroll backward/ right

## get/rotation_pitch
Groups the pitch rotation value of an entity.

target: `entity`\
location: `x x x`
### Scoreboard
scoreboard `rotation.pitch jmcc.value`
### Return
value `0`: the entity looks horizontally\
value `1`: the entity looks upwards\
value `-1`: the entity looks downwards

## get/rotation_yaw
Groups the yaw rotation value of an entity.

target: `entity`\
location: `x x x`
### Scoreboard
scoreboard `rotation.yaw jmcc.value`
### Return
value `0`: the entity looks north\
value `1`: the entity looks east\
value `2`: the entity looks south\
value `3`: the entity looks west

## get/direction
Saves the relative position for the rotation of an entity.

target: `entity`\
location: `x x x`
### Scoreboard
scoreboard `fun.result jmcc.value`
### Storage
storage `jmcc:data argument.relative`
### Return
value `1`: success

storage `relative`, value `~ ~1 ~`: the entity looks upwards\
storage `relative`, value `~ ~-1 ~`: the entity looks downwards\
storage `relative`, value `~ ~ ~-1`: the entity looks north\
storage `relative`, value `~1 ~ ~`: the entity looks east\
storage `relative`, value `~ ~ ~1`: the entity looks south\
storage `relative`, value `~-1 ~ ~`: the entity looks west
