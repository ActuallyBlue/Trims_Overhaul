advancement revoke @s only blue:tr/tame_kill
execute if entity @a[tag=blue.tr.wild,limit=1] run damage @s 4 blue:tr/poke by @a[tag=blue.tr.wild,limit=1]
execute unless entity @a[tag=blue.tr.wild,limit=1] run damage @s 4 blue:tr/poke
playsound entity.zombie_villager.cure player @s ~ ~ ~ 2 2
particle item{item:cactus} ~ ~1 ~ 0.4 0.6 0.4 0.1 32
effect give @s slowness 5 0 true
effect give @s glowing 6 0 true