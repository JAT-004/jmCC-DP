
# player did not scroll
execute if score @s jmcc.slot_change matches 0 run return 0
# scroll forward/ left
execute if predicate jmcc:scroll_forward run return 1
# scroll backward/ right
return -1
