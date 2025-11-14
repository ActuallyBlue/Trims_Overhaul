$tag @s add blue.tr.trim.$(trim)
$execute if entity @a[tag=blue.tr.$(trim),limit=1] run return run title @s actionbar {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@p[tag=blue.tr.$(trim)]","color":"white"},{"translate":"$(translate)","color":"white"}],"color":"gray"}
$function blue:tr/completion/$(trim)
$function blue:tr/inv/equip/$(trim)