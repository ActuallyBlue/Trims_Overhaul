scoreboard players set @s blue.tr.rtd_time -12
function blue:tr/tasks/rtd/universal
tag @s add blue.tr.rtd.bolt
title @s subtitle {"score":{"name":"@s","objective":"blue.tr.rtd_value"},"color":"#B65D1A"}
title @s title ""