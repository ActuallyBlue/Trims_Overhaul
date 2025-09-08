tellraw @s {"translate":"blue.tr.transfer_failed","fallback":" Something went wrong with your transfer. Confirm you own the trim you're attempting to transfer and that you selected the right one with the right items.","color":"gray"}
playsound item.shield.break player @s ~ ~ ~ 0.8 0.5
stopsound @s player block.end_portal_frame.fill
tag @s remove blue.tr.transfer_failed