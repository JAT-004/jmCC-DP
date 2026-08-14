
# place lower and upper half of a door
$setblock ~ ~ ~ $(block)[facing=$(facing),half=lower,hinge=$(hinge),open=$(open)]
$setblock ~ ~1 ~ $(block)[facing=$(facing),half=upper,hinge=$(hinge),open=$(open)]
