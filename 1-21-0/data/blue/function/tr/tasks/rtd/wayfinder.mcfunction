scoreboard players set @s blue.tr.rtd_time 2
function blue:tr/tasks/rtd/universal
tag @s add blue.tr.rtd.wayfinder
title @s subtitle {"score":{"name":"@s","objective":"blue.tr.rtd_value"},"color":"#F1FFC8"}
title @s title ""