execute if items entity @s container.* #blue:tr/templates[custom_data~{blue:trim}] run function blue:tr/inv/templates/update_data
execute if items entity @s container.* wayfinder_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:wayfinder}
execute if items entity @s weapon.offhand wayfinder_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:wayfinder}
execute if items entity @s container.* silence_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:silence}
execute if items entity @s weapon.offhand silence_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:silence}
execute if items entity @s container.* shaper_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:shaper}
execute if items entity @s weapon.offhand shaper_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:shaper}
execute if items entity @s container.* raiser_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:raiser}
execute if items entity @s weapon.offhand raiser_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:raiser}
execute if items entity @s container.* sentry_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:sentry}
execute if items entity @s weapon.offhand sentry_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:sentry}
execute if items entity @s container.* spire_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:spire}
execute if items entity @s weapon.offhand spire_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:spire}
execute if items entity @s container.* coast_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:coast}
execute if items entity @s weapon.offhand coast_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:coast}
execute if items entity @s container.* snout_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:snout}
execute if items entity @s weapon.offhand snout_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:snout}
execute if items entity @s container.* ward_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:ward}
execute if items entity @s weapon.offhand ward_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:ward}
execute if items entity @s container.* flow_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:flow}
execute if items entity @s weapon.offhand flow_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:flow}
execute if items entity @s container.* bolt_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:bolt}
execute if items entity @s weapon.offhand bolt_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:bolt}
execute if items entity @s container.* dune_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:dune}
execute if items entity @s weapon.offhand dune_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:dune}
execute if items entity @s container.* wild_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:wild}
execute if items entity @s weapon.offhand wild_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:wild}
execute if items entity @s container.* tide_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:tide}
execute if items entity @s weapon.offhand tide_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:tide}
execute if items entity @s container.* host_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:host}
execute if items entity @s weapon.offhand host_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:host}
execute if items entity @s container.* eye_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:eye}
execute if items entity @s weapon.offhand eye_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:eye}
execute if items entity @s container.* rib_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:rib}
execute if items entity @s weapon.offhand rib_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:rib}
execute if items entity @s container.* vex_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:vex}
execute if items entity @s weapon.offhand vex_armor_trim_smithing_template run function blue:tr/inv/templates/macro {trim:vex}
execute if score #.tr.template_clearing blue.config matches 1 run clear @s #blue:tr/templates[!custom_data~{blue:{trim:1b}}]
execute unless score #.tr.template_clearing blue.config matches 2 run return run advancement revoke @s only blue:tr/has_template req
clear @s[tag=!blue.tr.wayfinder] wayfinder_armor_trim_smithing_template
clear @s[tag=!blue.tr.silence] silence_armor_trim_smithing_template
clear @s[tag=!blue.tr.shaper] shaper_armor_trim_smithing_template
clear @s[tag=!blue.tr.raiser] raiser_armor_trim_smithing_template
clear @s[tag=!blue.tr.sentry] sentry_armor_trim_smithing_template
clear @s[tag=!blue.tr.spire] spire_armor_trim_smithing_template
clear @s[tag=!blue.tr.coast] coast_armor_trim_smithing_template
clear @s[tag=!blue.tr.snout] snout_armor_trim_smithing_template
clear @s[tag=!blue.tr.ward] ward_armor_trim_smithing_template
clear @s[tag=!blue.tr.flow] flow_armor_trim_smithing_template
clear @s[tag=!blue.tr.bolt] bolt_armor_trim_smithing_template
clear @s[tag=!blue.tr.dune] dune_armor_trim_smithing_template
clear @s[tag=!blue.tr.wild] wild_armor_trim_smithing_template
clear @s[tag=!blue.tr.tide] tide_armor_trim_smithing_template
clear @s[tag=!blue.tr.host] host_armor_trim_smithing_template
clear @s[tag=!blue.tr.eye] eye_armor_trim_smithing_template
clear @s[tag=!blue.tr.rib] rib_armor_trim_smithing_template
clear @s[tag=!blue.tr.vex] vex_armor_trim_smithing_template
advancement revoke @s only blue:tr/has_template req