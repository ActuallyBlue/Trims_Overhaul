advancement revoke @s only blue:tr/archeologist req
effect give @s luck 1 1 true
execute if predicate blue:r/40c run return 0
execute anchored eyes unless block ^ ^ ^1 #blue:shared/passable run particle composter ^ ^ ^0.5 0.3 0.3 0.3 0 1
execute anchored eyes if block ^ ^ ^1 #blue:shared/passable unless block ^ ^ ^2 #blue:shared/passable run particle composter ^ ^ ^1.5 0.3 0.3 0.3 0 1
execute anchored eyes if block ^ ^ ^1 #blue:shared/passable if block ^ ^ ^2 #blue:shared/passable unless block ^ ^ ^3 #blue:shared/passable run particle composter ^ ^ ^2.5 0.3 0.3 0.3 0 1
execute anchored eyes if block ^ ^ ^1 #blue:shared/passable if block ^ ^ ^2 #blue:shared/passable if block ^ ^ ^3 #blue:shared/passable unless block ^ ^ ^4 #blue:shared/passable run particle composter ^ ^ ^3.5 0.3 0.3 0.3 0 1
execute anchored eyes if block ^ ^ ^1 #blue:shared/passable if block ^ ^ ^2 #blue:shared/passable if block ^ ^ ^3 #blue:shared/passable if block ^ ^ ^4 #blue:shared/passable unless block ^ ^ ^5 #blue:shared/passable run particle composter ^ ^ ^4.5 0.3 0.3 0.3 0 1