execute unless entity @a[tag=blue.tr.eye_job,limit=1] run schedule function blue:tr/effects/eye/emp/fear/job_undo 20t
title @a[tag=blue.tr.eye_job,predicate=!blue:shared/has_blindness] times 20 60 20
tag @a[tag=blue.tr.eye_job,predicate=!blue:shared/has_blindness] remove blue.tr.eye_job