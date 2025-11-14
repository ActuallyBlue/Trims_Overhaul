execute if score @s[tag=blue.tr.bolt] Trims_Menu.BLUE matches 530 run function blue:tr/inv/transfer/owner/main {trim:bolt,translate:"Bolt","color":"#B65D1A"}
execute if score @s[tag=blue.tr.flow] Trims_Menu.BLUE matches 531 run function blue:tr/inv/transfer/owner/main {trim:flow,translate:"Flow","color":"#85B2C5"}
execute if score @s[tag=blue.tr.dune] Trims_Menu.BLUE matches 532 run function blue:tr/inv/transfer/owner/main {trim:dune,translate:"Dune","color":"#E7C547"}
execute if score @s[tag=blue.tr.wild] Trims_Menu.BLUE matches 533 run function blue:tr/inv/transfer/owner/main {trim:wild,translate:"Wild","color":"#00D529"}
execute if score @s[tag=blue.tr.tide] Trims_Menu.BLUE matches 534 run function blue:tr/inv/transfer/owner/main {trim:tide,translate:"Tide","color":"#199ADD"}
execute if score @s[tag=blue.tr.host] Trims_Menu.BLUE matches 535 run function blue:tr/inv/transfer/owner/main {trim:host,translate:"Host","color":"#A34646"}
execute if score @s[tag=blue.tr.eye] Trims_Menu.BLUE matches 536 run function blue:tr/inv/transfer/owner/main {trim:eye,translate:"Eye","color":"#1F8A46"}
execute if score @s[tag=blue.tr.rib] Trims_Menu.BLUE matches 537 run function blue:tr/inv/transfer/owner/main {trim:rib,translate:"Rib","color":"#E6484B"}
execute if score @s[tag=blue.tr.vex] Trims_Menu.BLUE matches 538 run function blue:tr/inv/transfer/owner/main {trim:vex,translate:"Vex","color":"#CFC6A5"}
execute if entity @s[tag=blue.tr.transfer_failed] run function blue:tr/inv/transfer/owner/fail
setblock 200600 2 200600 barrel{}