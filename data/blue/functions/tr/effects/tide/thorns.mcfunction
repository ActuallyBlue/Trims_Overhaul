execute store success score #.temp blue.misc if predicate blue:tr/in_monument
execute if score #.temp blue.misc matches 1 on attacker run damage @s[distance=6..] 6 thorns by @a[tag=blue.tr.tide,distance=..1,limit=1]
execute if score #.temp blue.misc matches 0 on attacker run damage @s[distance=8..] 3 thorns by @a[tag=blue.tr.tide,distance=..1,limit=1]
advancement revoke @s only blue:tr/tide_thorns