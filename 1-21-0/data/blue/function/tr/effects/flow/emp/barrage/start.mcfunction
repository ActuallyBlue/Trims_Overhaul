effect give @s levitation 1 9 true
particle poof ~ ~1 ~ 0.4 0.6 0.4 0.1 12
scoreboard players set #.flow.barrage_cooldown blue.misc 1
schedule function blue:tr/effects/flow/emp/barrage/cooldown 60s
playsound block.trial_spawner.about_to_spawn_item player @a[x=0] ~ ~ ~ 4 0.6
advancement grant @s only blue:tr/tags tutorial_barrage