#> time_limit:player/adv_place/

data modify storage player_item_tuner: condition.if set value {id:"#time_limit:shulker"}
data modify storage player_item_tuner: result.merge set value {tag:{CanPlaceOn:["#minecraft:all"],CanDestroy:["minecraft:wooden_pickaxe","minecraft:golden_pickaxe"]},HideFlags:24}
function #player_item_tuner:modify/inventory

advancement revoke @s only time_limit:time_limit/shulker_adv
