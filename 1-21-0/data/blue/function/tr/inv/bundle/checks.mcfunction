advancement revoke @s only blue:tr/has_trim_bundle
execute if entity @s[gamemode=creative] run return fail
execute if items entity @s player.cursor #bundles[bundle_contents~{items:{contains:[{predicates:{trim:{}}}]}}] run return run function blue:tr/inv/bundle/slot {slot:"player.cursor"}
execute if items entity @s inventory.* #bundles[bundle_contents~{items:{contains:[{predicates:{trim:{}}}]}}] run return run function blue:tr/inv/bundle/inv
execute if items entity @s hotbar.* #bundles[bundle_contents~{items:{contains:[{predicates:{trim:{}}}]}}] run return run function blue:tr/inv/bundle/bar
execute if items entity @s weapon.offhand #bundles[bundle_contents~{items:{contains:[{predicates:{trim:{}}}]}}] run function blue:tr/inv/bundle/slot {slot:"weapon.offhand"}