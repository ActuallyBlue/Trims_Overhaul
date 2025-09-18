execute if score @s[tag=blue.tr.wayfinder] TrimCMDs.BLUE matches 521 run function blue:tr/inv/transfer/owner/main {trim:wayfinder,translate:"Wayfinder",color:"#F1FFC8"}
execute if score @s[tag=blue.tr.silence] TrimCMDs.BLUE matches 522 run function blue:tr/inv/transfer/owner/main {trim:silence,translate:"Silence",color:"#3842Cf"}
execute if score @s[tag=blue.tr.raiser] TrimCMDs.BLUE matches 523 run function blue:tr/inv/transfer/owner/main {trim:raiser,translate:"Raiser",color:"#95B623"}
execute if score @s[tag=blue.tr.shaper] TrimCMDs.BLUE matches 524 run function blue:tr/inv/transfer/owner/main {trim:shaper,translate:"Shaper",color:"#8F8F8F"}
execute if score @s[tag=blue.tr.sentry] TrimCMDs.BLUE matches 525 run function blue:tr/inv/transfer/owner/main {trim:sentry,translate:"Sentry",color:"#4B885B"}
execute if score @s[tag=blue.tr.spire] TrimCMDs.BLUE matches 526 run function blue:tr/inv/transfer/owner/main {trim:spire,translate:"Spire",color:"#BE20C7"}
execute if score @s[tag=blue.tr.coast] TrimCMDs.BLUE matches 527 run function blue:tr/inv/transfer/owner/main {trim:coast,translate:"Coast",color:"#C1C888"}
execute if score @s[tag=blue.tr.snout] TrimCMDs.BLUE matches 528 run function blue:tr/inv/transfer/owner/main {trim:snout,translate:"Snout",color:"#F2B01A"}
execute if score @s[tag=blue.tr.ward] TrimCMDs.BLUE matches 529 run function blue:tr/inv/transfer/owner/main {trim:ward,translate:"Ward",color:"#5C70AE"}
execute if entity @s[tag=blue.tr.transfer_failed] run function blue:tr/inv/transfer/owner/fail
setblock 200600 2 200600 barrel