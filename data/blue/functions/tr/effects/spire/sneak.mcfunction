execute if block ~ ~-0.5 ~ #replaceable unless score #.spire.guidance_cooldown blue.misc matches 1 run function blue:tr/effects/spire/guidance
execute if block ~ ~-0.5 ~ #replaceable run effect give @s slow_falling 1 0 true
execute unless predicate blue:shared/void unless score #.spire.guidance_cooldown blue.misc matches 1 run function blue:tr/effects/spire/guidance
execute unless predicate blue:shared/void run effect give @s slow_falling 1 0 true
advancement revoke @s only blue:tr/tags not_sneaking