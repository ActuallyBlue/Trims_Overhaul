scoreboard players set @s blue.tr.rtd_time 0
function blue:tr/tasks/rtd/universal
tag @s add blue.tr.rtd.raiser
title @s subtitle {"score":{"name":"@s","objective":"blue.tr.rtd_value"},"color":"#95B623"}
title @s title ""