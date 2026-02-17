kill b163102f-0-f-0-1
execute positioned 0.0 0.3 0.0 positioned ^ ^ ^0.9 summon marker run function blue:shared/shootfacing
execute anchored eyes run summon item ^ ^ ^1 {UUID:[I;-1318907857,15,0,1],Age:5600s,PickupDelay:32767s,Item:{id:"minecraft:sculk",Count:1b},Tags:["blue.tr.checked","blue.tr.silence.vortex","smithed.entity"],Motion:[0d,0d,0d]}
data modify entity b163102f-0-f-0-1 Motion set from storage blue:shared Pos
scoreboard players set #.silence.vortex_cooldown blue.misc 1
schedule function blue:tr/effects/silence/emp/vortex/cooldown 800t
playsound entity.warden.attack_impact player @a ~ ~ ~ 2.5 0.5
advancement grant @s only blue:tr/tags tutorial_vortex