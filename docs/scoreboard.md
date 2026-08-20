
# Dummy

## jmcc.value
Any value.
### Range
full

## jmcc.slot_current
The currently selected hotbar slot of the player. The leftmost slot is 0, the rightmost slot is 8.
### Range
min: 0\
max: 8

## jmcc.slot_previous
The previous value of the scoreboard `jmcc.slot_current`, the value from the previous game tick.
### Range
min: 0\
max: 8

## jmcc.slot_change
The scoreboard `jmcc.slot_current` is subtracted from `jmcc.slot_previous` to calculate the difference.
### Range
min: -8\
max: 8
