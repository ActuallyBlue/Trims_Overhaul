execute unless entity @s[type=ender_pearl] run function blue:tr/effects/spire/emp/aperture/entity_tp
execute unless entity @s[type=ender_pearl] run return 0
execute if entity @s[type=player] run function blue:tr/effects/spire/emp/aperture/player
execute on origin run function blue:tr/effects/spire/emp/aperture/player
kill