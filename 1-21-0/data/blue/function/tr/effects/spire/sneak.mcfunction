advancement revoke @s only blue:tr/tags not_sneaking
execute if predicate blue:shared/on_ground run return fail
execute unless score #.spire.guidance_cooldown blue.misc matches 1 if entity @s run function blue:tr/effects/spire/guidance
effect give @s slow_falling 1 0 true