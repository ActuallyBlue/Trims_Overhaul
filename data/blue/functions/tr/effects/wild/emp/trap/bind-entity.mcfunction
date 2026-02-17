particle falling_spore_blossom ~ ~0.9 ~ 0.2 0.5 0.2 0 2
scoreboard players operation #.link blue.id = @s blue.id
execute as @a[predicate=blue:shared/id_link,limit=1] run function blue:tr/effects/wild/emp/trap/bind-player
execute unless block ~ ~-0.3 ~ grass_block run function blue:tr/effects/wild/emp/trap/broken
schedule function blue:tr/effects/wild/emp/trap/bind-loop 1t
scoreboard players add @s blue.misc 1
kill @s[scores={blue.misc=179..}]