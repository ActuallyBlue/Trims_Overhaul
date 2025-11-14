execute unless entity @s[tag=blue.tr.wayfinder] run scoreboard players set @s blue.tr.structures 12
execute unless entity @s[tag=blue.tr.wayfinder] run function blue:tr/completion/z/wayfinder
advancement grant @s only blue:tr/quests/wayfinder
scoreboard players set @s blue.tr.structures 32