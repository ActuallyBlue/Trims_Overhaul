scoreboard players set @s blue.tr.RTDtime 0
function blue:tr/tasks/rtd/universal
tag @s add blue.tr.RTD.sentry
title @s subtitle {"score":{"name":"@s","objective":"blue.tr.RTDval"},"color":"#4B885B"}
title @s title ""