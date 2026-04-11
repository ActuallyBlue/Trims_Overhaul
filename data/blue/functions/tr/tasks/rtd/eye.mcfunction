scoreboard players set @s blue.tr.rtd_time -6
function blue:tr/tasks/rtd/universal
tag @s add blue.tr.rtd.eye
title @s subtitle {"score":{"name":"@s","objective":"blue.tr.rtd_value"},"color":"#1F8A46"}
title @s title ""