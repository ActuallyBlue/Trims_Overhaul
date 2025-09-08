tag @s add blue.tr.checked
execute if items entity @s contents *[trim] run return run function blue:tr/inv/died/keep
execute if items entity @s contents #blue:tr/templates run function blue:tr/inv/died/keep