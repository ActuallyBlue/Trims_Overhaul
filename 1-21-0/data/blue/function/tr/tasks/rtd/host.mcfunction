scoreboard players set @s blue.tr.rtd_time 0
function blue:tr/tasks/rtd/universal
tag @s add blue.tr.rtd.host
title @s subtitle {"score":{"name":"@s","objective":"blue.tr.rtd_value"},"color":"#A34646"}
title @s title ""