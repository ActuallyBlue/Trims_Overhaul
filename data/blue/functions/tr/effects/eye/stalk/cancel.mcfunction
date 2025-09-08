scoreboard players remove #.eye.watching blue.misc 1
execute unless score #.eye.watching blue.misc matches ..0 run return 0
scoreboard players reset #.eye.watching blue.misc
scoreboard players operation #.temp blue.misc = #.eye.scare_charge blue.misc
scoreboard players reset #.eye.scare_charge blue.misc
execute if score #.temp blue.misc matches 200.. anchored eyes positioned ^ ^ ^1.5 run function blue:tr/effects/eye/stalk/cast
execute if score #.temp blue.misc matches 200.. run tag @a[tag=blue.tr.stalk_limit] remove blue.tr.stalk_limit
schedule function blue:tr/effects/eye/stalk/actionbar 3t
execute if score #.eye.scare_cooldown blue.misc matches 1 run return 0
execute unless score #.temp blue.misc matches 20.. run title @s actionbar {"text":"👁👁👁👁👁👁👁👁👁👁","color":"dark_gray","italic":true}
execute if score #.temp blue.misc matches 20..39 run title @s actionbar ["",{"text":"👁","color":"gray","bold":true},{"text":"👁👁👁👁👁👁👁👁👁","color":"dark_gray","italic":true}]
execute if score #.temp blue.misc matches 40..59 run title @s actionbar ["",{"text":"👁👁","color":"gray","bold":true},{"text":"👁👁👁👁👁👁👁👁","color":"dark_gray","italic":true}]
execute if score #.temp blue.misc matches 60..79 run title @s actionbar ["",{"text":"👁👁👁","color":"gray","bold":true},{"text":"👁👁👁👁👁👁👁","color":"dark_gray","italic":true}]
execute if score #.temp blue.misc matches 80..99 run title @s actionbar ["",{"text":"👁👁👁👁","color":"gray","bold":true},{"text":"👁👁👁👁👁👁","color":"dark_gray","italic":true}]
execute if score #.temp blue.misc matches 100..119 run title @s actionbar ["",{"text":"👁👁👁👁👁","color":"gray","bold":true},{"text":"👁👁👁👁👁","color":"dark_gray","italic":true}]
execute if score #.temp blue.misc matches 120..139 run title @s actionbar ["",{"text":"👁👁👁👁👁👁","color":"gray","bold":true},{"text":"👁👁👁👁","color":"dark_gray","italic":true}]
execute if score #.temp blue.misc matches 140..159 run title @s actionbar ["",{"text":"👁👁👁👁👁👁👁","color":"gray","bold":true},{"text":"👁👁👁","color":"dark_gray","italic":true}]
execute if score #.temp blue.misc matches 160..179 run title @s actionbar ["",{"text":"👁👁👁👁👁👁👁👁","color":"gray","bold":true},{"text":"👁👁","color":"dark_gray","italic":true}]
execute if score #.temp blue.misc matches 180..199 run title @s actionbar ["",{"text":"👁👁👁👁👁👁👁👁👁","color":"gray","bold":true},{"text":"👁","color":"dark_gray","italic":true}]
execute if score #.temp blue.misc matches 200.. run title @s actionbar {"text":"- 👁👁👁👁👁👁👁👁👁👁 -","color":"gray","bold":true}