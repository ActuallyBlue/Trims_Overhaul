scoreboard players set @s blue.tr.rtd_time -5
function blue:tr/tasks/rtd/universal
tag @s add blue.tr.rtd.silence
title @s subtitle {"score":{"name":"@s","objective":"blue.tr.rtd_value"},"color":"#3842Cf"}
title @s title ""