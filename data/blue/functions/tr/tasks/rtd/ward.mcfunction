scoreboard players set @s blue.tr.rtd_time -12
function blue:tr/tasks/rtd/universal
tag @s add blue.tr.rtd.ward
title @s subtitle {"score":{"name":"@s","objective":"blue.tr.rtd_value"},"color":"#5C70AE"}
title @s title ""