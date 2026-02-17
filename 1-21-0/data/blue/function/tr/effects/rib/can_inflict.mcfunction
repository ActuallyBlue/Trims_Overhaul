scoreboard players add #.rib.infliction_pity blue.misc 1
execute if score #.rib.infliction_pity blue.misc matches ..5 run return run advancement revoke @s only blue:tr/infliction can_inflict
execute unless score #.rib.infliction_pity blue.misc matches 33.. unless predicate blue:r/3c run return run advancement revoke @s only blue:tr/infliction can_inflict
scoreboard players reset #.rib.infliction_pity blue.misc
playsound entity.wither.break_block player @a ~ ~ ~ 0.2 2
particle white_ash ~ ~1.2 ~ 0.3 0.4 0.3 0 12
effect give @s wither 3 9
damage @s 5 wither