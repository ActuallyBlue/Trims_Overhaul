scoreboard players set @s blue.tr.rtd_time -12
function blue:tr/tasks/rtd/universal
tag @s add blue.tr.rtd.flow
title @s subtitle {"score":{"name":"@s","objective":"blue.tr.rtd_value"},"color":"#85B2C5"}
title @s title ""