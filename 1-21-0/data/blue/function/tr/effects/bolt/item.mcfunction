data modify storage blue:trims item set from entity @s Item.id
$execute on origin unless predicate blue:shared/is_sneaking anchored eyes positioned ^ ^ ^$(float) if function blue:tr/effects/bolt/air run return fail
$execute on origin if predicate blue:shared/is_sneaking anchored eyes positioned ^ ^ ^2 positioned ^ ^ ^$(float) if function blue:tr/effects/bolt/air run return fail
kill