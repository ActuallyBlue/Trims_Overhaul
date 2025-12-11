data modify storage blue:trims logs set from storage blue:trims telemetry
data remove storage blue:trims telemetry
data modify storage blue:trims logs.transfer[{type:{"translate":"Wayfinder"}}].trim set value {"translate":"Wayfinder","color":"#F1FFC8"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Silence"}}].trim set value {"translate":"Silence","color":"#3842Cf"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Raiser"}}].trim set value {"translate":"Raiser","color":"#95B623"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Shaper"}}].trim set value {"translate":"Shaper","color":"#8F8F8F"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Sentry"}}].trim set value {"translate":"Sentry","color":"#4B885B"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Spire"}}].trim set value {"translate":"Spire","color":"#BE20C7"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Coast"}}].trim set value {"translate":"Coast","color":"#C1C888"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Snout"}}].trim set value {"translate":"Snout","color":"#F2B01A"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Ward"}}].trim set value {"translate":"Ward","color":"#5C70AE"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Bolt"}}].trim set value {"translate":"Bolt","color":"#B65D1A"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Flow"}}].trim set value {"translate":"Flow","color":"#85B2C5"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Dune"}}].trim set value {"translate":"Dune","color":"#E7C547"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Wild"}}].trim set value {"translate":"Wild","color":"#00D529"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Tide"}}].trim set value {"translate":"Tide","color":"#199ADD"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Host"}}].trim set value {"translate":"Host","color":"#A34646"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Eye"}}].trim set value {"translate":"Eye","color":"#1F8A46"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Rib"}}].trim set value {"translate":"Rib","color":"#E6484B"}
data modify storage blue:trims logs.transfer[{type:{"translate":"Vex"}}].trim set value {"translate":"Vex","color":"#CFC6A5"}
data modify storage blue:trims logs.transfer[{type:{"translate":"wayfinder"}}].trim set value {"translate":"Wayfinder","color":"#F1FFC8"}
data modify storage blue:trims logs.transfer[{type:{"translate":"silence"}}].trim set value {"translate":"Silence","color":"#3842Cf"}
data modify storage blue:trims logs.transfer[{type:{"translate":"shaper"}}].trim set value {"translate":"Raiser","color":"#95B623"}
data modify storage blue:trims logs.transfer[{type:{"translate":"raiser"}}].trim set value {"translate":"Shaper","color":"#8F8F8F"}
data modify storage blue:trims logs.transfer[{type:{"translate":"sentry"}}].trim set value {"translate":"Sentry","color":"#4B885B"}
data modify storage blue:trims logs.transfer[{type:{"translate":"spire"}}].trim set value {"translate":"Spire","color":"#BE20C7"}
data modify storage blue:trims logs.transfer[{type:{"translate":"coast"}}].trim set value {"translate":"Coast","color":"#C1C888"}
data modify storage blue:trims logs.transfer[{type:{"translate":"snout"}}].trim set value {"translate":"Snout","color":"#F2B01A"}
data modify storage blue:trims logs.transfer[{type:{"translate":"wild"}}].trim set value {"translate":"Ward","color":"#5C70AE"}
data modify storage blue:trims logs.transfer[{type:{"translate":"host"}}].trim set value {"translate":"Bolt","color":"#B65D1A"}
data modify storage blue:trims logs.transfer[{type:{"translate":"tide"}}].trim set value {"translate":"Flow","color":"#85B2C5"}
data modify storage blue:trims logs.transfer[{type:{"translate":"flow"}}].trim set value {"translate":"Dune","color":"#E7C547"}
data modify storage blue:trims logs.transfer[{type:{"translate":"dune"}}].trim set value {"translate":"Wild","color":"#00D529"}
data modify storage blue:trims logs.transfer[{type:{"translate":"bolt"}}].trim set value {"translate":"Tide","color":"#199ADD"}
data modify storage blue:trims logs.transfer[{type:{"translate":"ward"}}].trim set value {"translate":"Host","color":"#A34646"}
data modify storage blue:trims logs.transfer[{type:{"translate":"vex"}}].trim set value {"translate":"Eye","color":"#1F8A46"}
data modify storage blue:trims logs.transfer[{type:{"translate":"rib"}}].trim set value {"translate":"Rib","color":"#E6484B"}
data modify storage blue:trims logs.transfer[{type:{"translate":"eye"}}].trim set value {"translate":"Vex","color":"#CFC6A5"}
data remove storage blue:trims logs.transfer[].type
data modify storage blue:trims logs.temp set from storage blue:trims logs.transfer
function blue:tr/debug/logs/z/upd_tl
data modify storage blue:trims logs.transfer set from storage blue:trims logs.replace
data remove storage blue:trims logs.replace
data modify storage blue:trims logs.completion[{type:{"translate":"Wayfinder"}}].trim set value {"translate":"Wayfinder","color":"#F1FFC8"}
data modify storage blue:trims logs.completion[{type:{"translate":"Silence"}}].trim set value {"translate":"Silence","color":"#3842Cf"}
data modify storage blue:trims logs.completion[{type:{"translate":"Raiser"}}].trim set value {"translate":"Raiser","color":"#95B623"}
data modify storage blue:trims logs.completion[{type:{"translate":"Shaper"}}].trim set value {"translate":"Shaper","color":"#8F8F8F"}
data modify storage blue:trims logs.completion[{type:{"translate":"Sentry"}}].trim set value {"translate":"Sentry","color":"#4B885B"}
data modify storage blue:trims logs.completion[{type:{"translate":"Spire"}}].trim set value {"translate":"Spire","color":"#BE20C7"}
data modify storage blue:trims logs.completion[{type:{"translate":"Coast"}}].trim set value {"translate":"Coast","color":"#C1C888"}
data modify storage blue:trims logs.completion[{type:{"translate":"Snout"}}].trim set value {"translate":"Snout","color":"#F2B01A"}
data modify storage blue:trims logs.completion[{type:{"translate":"Ward"}}].trim set value {"translate":"Ward","color":"#5C70AE"}
data modify storage blue:trims logs.completion[{type:{"translate":"Bolt"}}].trim set value {"translate":"Bolt","color":"#B65D1A"}
data modify storage blue:trims logs.completion[{type:{"translate":"Flow"}}].trim set value {"translate":"Flow","color":"#85B2C5"}
data modify storage blue:trims logs.completion[{type:{"translate":"Dune"}}].trim set value {"translate":"Dune","color":"#E7C547"}
data modify storage blue:trims logs.completion[{type:{"translate":"Wild"}}].trim set value {"translate":"Wild","color":"#00D529"}
data modify storage blue:trims logs.completion[{type:{"translate":"Tide"}}].trim set value {"translate":"Tide","color":"#199ADD"}
data modify storage blue:trims logs.completion[{type:{"translate":"Host"}}].trim set value {"translate":"Host","color":"#A34646"}
data modify storage blue:trims logs.completion[{type:{"translate":"Eye"}}].trim set value {"translate":"Eye","color":"#1F8A46"}
data modify storage blue:trims logs.completion[{type:{"translate":"Rib"}}].trim set value {"translate":"Rib","color":"#E6484B"}
data modify storage blue:trims logs.completion[{type:{"translate":"Vex"}}].trim set value {"translate":"Vex","color":"#CFC6A5"}
data modify storage blue:trims logs.completion[{type:{"translate":"wayfinder"}}].trim set value {"translate":"Wayfinder","color":"#F1FFC8"}
data modify storage blue:trims logs.completion[{type:{"translate":"silence"}}].trim set value {"translate":"Silence","color":"#3842Cf"}
data modify storage blue:trims logs.completion[{type:{"translate":"shaper"}}].trim set value {"translate":"Raiser","color":"#95B623"}
data modify storage blue:trims logs.completion[{type:{"translate":"raiser"}}].trim set value {"translate":"Shaper","color":"#8F8F8F"}
data modify storage blue:trims logs.completion[{type:{"translate":"sentry"}}].trim set value {"translate":"Sentry","color":"#4B885B"}
data modify storage blue:trims logs.completion[{type:{"translate":"spire"}}].trim set value {"translate":"Spire","color":"#BE20C7"}
data modify storage blue:trims logs.completion[{type:{"translate":"coast"}}].trim set value {"translate":"Coast","color":"#C1C888"}
data modify storage blue:trims logs.completion[{type:{"translate":"snout"}}].trim set value {"translate":"Snout","color":"#F2B01A"}
data modify storage blue:trims logs.completion[{type:{"translate":"wild"}}].trim set value {"translate":"Ward","color":"#5C70AE"}
data modify storage blue:trims logs.completion[{type:{"translate":"host"}}].trim set value {"translate":"Bolt","color":"#B65D1A"}
data modify storage blue:trims logs.completion[{type:{"translate":"tide"}}].trim set value {"translate":"Flow","color":"#85B2C5"}
data modify storage blue:trims logs.completion[{type:{"translate":"flow"}}].trim set value {"translate":"Dune","color":"#E7C547"}
data modify storage blue:trims logs.completion[{type:{"translate":"dune"}}].trim set value {"translate":"Wild","color":"#00D529"}
data modify storage blue:trims logs.completion[{type:{"translate":"bolt"}}].trim set value {"translate":"Tide","color":"#199ADD"}
data modify storage blue:trims logs.completion[{type:{"translate":"ward"}}].trim set value {"translate":"Host","color":"#A34646"}
data modify storage blue:trims logs.completion[{type:{"translate":"vex"}}].trim set value {"translate":"Eye","color":"#1F8A46"}
data modify storage blue:trims logs.completion[{type:{"translate":"rib"}}].trim set value {"translate":"Rib","color":"#E6484B"}
data modify storage blue:trims logs.completion[{type:{"translate":"eye"}}].trim set value {"translate":"Vex","color":"#CFC6A5"}
data remove storage blue:trims logs.completion[].type
data modify storage blue:trims logs.temp set from storage blue:trims logs.completion
function blue:tr/debug/logs/z/upd_cl
data modify storage blue:trims logs.completion set from storage blue:trims logs.replace
data remove storage blue:trims logs.replace