scoreboard players set @s blue.tr.RTDtime 0
function blue:tr/tasks/rtd/universal
tag @s add blue.tr.RTD.host
title @s subtitle {"score":{"name":"@s","objective":"blue.tr.RTDval"},"color":"#A34646"}
title @s title ""