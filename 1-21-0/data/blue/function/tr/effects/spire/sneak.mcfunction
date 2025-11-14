execute if score #.OnGround blue.misc matches 0 unless score #.spire.guidance_cooldown blue.misc matches 1 if entity @s run function blue:tr/effects/spire/guidance
execute if score #.OnGround blue.misc matches 0 run effect give @s slow_falling 1 0 true
advancement revoke @s only blue:tr/tags not_sneaking