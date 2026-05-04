advancement revoke @s only blue:tr/archeologist req
effect give @s luck 1 1 true
execute if predicate blue:r/40c run return fail
execute anchored eyes unless block ^ ^ ^1 #blue:shared/passable run return run particle composter ^ ^ ^0.5 0.3 0.3 0.3 0 1
execute anchored eyes unless block ^ ^ ^2 #blue:shared/passable run return run particle composter ^ ^ ^1.5 0.3 0.3 0.3 0 1
execute anchored eyes unless block ^ ^ ^3 #blue:shared/passable run return run particle composter ^ ^ ^2.5 0.3 0.3 0.3 0 1
execute anchored eyes unless block ^ ^ ^4 #blue:shared/passable run return run particle composter ^ ^ ^3.5 0.3 0.3 0.3 0 1
execute anchored eyes unless block ^ ^ ^5 #blue:shared/passable run return run particle composter ^ ^ ^4.5 0.3 0.3 0.3 0 1
execute anchored eyes run particle composter ^ ^ ^5.5 0.3 0.3 0.3 0 1