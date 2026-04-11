scoreboard players set @s blue.tr.rtd_time 3
function blue:tr/tasks/rtd/universal
tag @s add blue.tr.rtd.tide
title @s subtitle {"score":{"name":"@s","objective":"blue.tr.rtd_value"},"color":"#199ADD"}
title @s title ""