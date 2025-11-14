advancement revoke @s only blue:tr/stalk req
scoreboard players set #.eye.watching blue.misc 2
execute anchored eyes run particle glow ^ ^ ^149 0.3 0.3 0.3 0 1 force @s
execute anchored eyes positioned ^ ^ ^1.5 run function blue:tr/effects/eye/stalk/cast
execute if score #.eye.scare_charge blue.misc matches 1.. unless entity @a[tag=blue.tr.stalk_limit,limit=1] run function blue:tr/effects/eye/stalk/decay
tag @a[tag=blue.tr.stalk_limit] remove blue.tr.stalk_limit
execute if score #.eye.scare_cooldown blue.misc matches 1 run title @s actionbar {"text":"##########","color":"dark_green","italic":true,"obfuscated":true}
execute if score #.eye.scare_cooldown blue.misc matches 1 run return 0
execute unless score #.eye.scare_charge blue.misc matches 19.. run title @s actionbar {"text":"👁👁👁👁👁👁👁👁👁👁","color":"dark_green","italic":true}
execute unless score #.eye.scare_charge blue.misc matches 19.. run return 0
execute if score #.eye.scare_charge blue.misc matches 20..39 run title @s actionbar ["",{"text":"👁","color":"green","bold":true},{"text":"👁👁👁👁👁👁👁👁👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 40..59 run title @s actionbar ["",{"text":"👁👁","color":"green","bold":true},{"text":"👁👁👁👁👁👁👁👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 60..79 run title @s actionbar ["",{"text":"👁👁👁","color":"green","bold":true},{"text":"👁👁👁👁👁👁👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 80..99 run title @s actionbar ["",{"text":"👁👁👁👁","color":"green","bold":true},{"text":"👁👁👁👁👁👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 100..119 run title @s actionbar ["",{"text":"👁👁👁👁👁","color":"green","bold":true},{"text":"👁👁👁👁👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 120..139 run title @s actionbar ["",{"text":"👁👁👁👁👁👁","color":"green","bold":true},{"text":"👁👁👁👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 140..159 run title @s actionbar ["",{"text":"👁👁👁👁👁👁👁","color":"green","bold":true},{"text":"👁👁👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 160..179 run title @s actionbar ["",{"text":"👁👁👁👁👁👁👁👁","color":"green","bold":true},{"text":"👁👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 180..199 run title @s actionbar ["",{"text":"👁👁👁👁👁👁👁👁👁","color":"green","bold":true},{"text":"👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 200.. run title @s actionbar {"text":"- 👁👁👁👁👁👁👁👁👁👁 -","color":"green","bold":true}
scoreboard players operation #.temp blue.misc = #.eye.scare_charge blue.misc
scoreboard players operation #.temp blue.misc /= #20 blue.misc
execute unless score #.temp blue.misc > #.eye.scare_charge_old blue.misc run return 0
scoreboard players operation #.eye.scare_charge_old blue.misc = #.temp blue.misc
execute if score #.eye.scare_charge blue.misc matches ..119 run function blue:tr/effects/eye/stalk/sound_low
execute if score #.eye.scare_charge blue.misc matches 120..219 run function blue:tr/effects/eye/stalk/sound_high