execute if score #.eye.scare_charge blue.misc matches 120..139 run title @s actionbar ["",{"text":"👁👁👁👁👁👁","color":"green","obfuscated":true,"bold":true},{"text":"👁👁👁👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 140..159 run title @s actionbar ["",{"text":"👁👁👁👁👁👁👁","color":"green","obfuscated":true,"bold":true},{"text":"👁👁👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 160..179 run title @s actionbar ["",{"text":"👁👁👁👁👁👁👁👁","color":"green","obfuscated":true,"bold":true},{"text":"👁👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 180..199 run title @s actionbar ["",{"text":"👁👁👁👁👁👁👁👁👁","color":"green","obfuscated":true,"bold":true},{"text":"👁","color":"dark_green","italic":true}]
execute if score #.eye.scare_charge blue.misc matches 200..219 run title @s actionbar {"text":"- 👁👁👁👁👁👁👁👁👁👁 -","color":"green","obfuscated":true,"bold":true}
execute if score #.eye.scare_charge blue.misc matches 120..139 run playsound entity.ender_eye.death player @s ~ ~ ~ 2 1.25
execute if score #.eye.scare_charge blue.misc matches 140..159 run playsound entity.ender_eye.death player @s ~ ~ ~ 2.2 1.4
execute if score #.eye.scare_charge blue.misc matches 160..179 run playsound entity.ender_eye.death player @s ~ ~ ~ 2.4 1.55
execute if score #.eye.scare_charge blue.misc matches 180..199 run playsound entity.ender_eye.death player @s ~ ~ ~ 2.6 1.7
execute if score #.eye.scare_charge blue.misc matches 200..219 run playsound entity.ender_eye.death player @s ~ ~ ~ 3 2
execute if score #.eye.scare_charge blue.misc matches 120..139 run playsound entity.ender_eye.launch player @s ~ ~ ~ 1.9 1.25
execute if score #.eye.scare_charge blue.misc matches 140..159 run playsound entity.ender_eye.launch player @s ~ ~ ~ 2.1 1.4
execute if score #.eye.scare_charge blue.misc matches 160..179 run playsound entity.ender_eye.launch player @s ~ ~ ~ 2.3 1.55
execute if score #.eye.scare_charge blue.misc matches 180..199 run playsound entity.ender_eye.launch player @s ~ ~ ~ 2.5 1.7
execute if score #.eye.scare_charge blue.misc matches 200..219 run playsound entity.ender_eye.launch player @s ~ ~ ~ 2.9 2
execute if score #.eye.scare_charge blue.misc matches 200..219 run playsound block.respawn_anchor.charge player @s ~ ~ ~ 0.75 1.25