tag @s add blue.tr.stalk_limit
execute unless score #.eye.scare_cooldown blue.misc matches 1 unless score #.eye.scare_cooldown blue.misc matches 200.. run scoreboard players add #.eye.scare_charge blue.misc 1
execute if score #.eye.watching blue.misc matches 0.. run return fail
execute if entity @a[tag=blue.tr.mats.eye,limit=1] run scoreboard players add @s blue.tr.fear 600
schedule function blue:tr/effects/eye/stalk/cooldown 200t
scoreboard players set #.eye.scare_cooldown blue.misc 1
playsound item.totem.use player @s ~ ~ ~ 2 1.5
damage @s 13 player_attack by @a[tag=blue.tr.eye,limit=1]
damage @s 0.1 blue:tr/raw
particle flash ~ ~1 ~ 0.2 0.2 0.2 0 3 force @s[scores={blue.particles=1..}]
particle flash ~ ~1 ~ 0.2 0.2 0.2 0 3 force @s[scores={blue.particles=2..}]
effect give @s mining_fatigue 6 0
effect give @s darkness 1 0
effect give @s weakness 6 0
effect give @s glowing 6 0