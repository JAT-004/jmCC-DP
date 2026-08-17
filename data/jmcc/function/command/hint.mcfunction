
# save translate id
$data modify storage jmcc:data argument.translate set value "$(translate)"

# get color
$data modify storage jmcc:data argument.color set from storage jmcc:data hint.$(type)

# show message in actionbar
function jmcc:command/hint/show with storage jmcc:data argument
