#> player_manager:inventory_event/item_replace/tl_sign_stand
#
# 
#
# @within function player_manager:inventory_event/item_replace/

data modify storage player_item_tuner: condition.if set value {tag:{EntityTag:{Tags:["TL_SignStand","PermanentStand","PearlTrader","TypeChecked"]}}}
data modify storage player_item_tuner: result.merge set value {tag:{EntityTag:{Tags:["SignStand","PermanentStand","PearlTrader","TypeChecked"]}}}
function #player_item_tuner:modify/inventory

data modify storage player_item_tuner: condition.if set value {tag:{EntityTag:{Tags:["TL_SignStand","PermanentStand","FunChestTrader","TypeChecked"]}}}
data modify storage player_item_tuner: result.merge set value {tag:{EntityTag:{Tags:["SignStand","PermanentStand","FunChestTrader","TypeChecked"]}}}
function #player_item_tuner:modify/inventory

data modify storage player_item_tuner: condition.if set value {tag:{EntityTag:{Tags:["TL_SignStand","PermanentStand","TChestTrader","TypeChecked"]}}}
data modify storage player_item_tuner: result.merge set value {tag:{EntityTag:{Tags:["SignStand","PermanentStand","TChestTrader","TypeChecked"]}}}
function #player_item_tuner:modify/inventory

data modify storage player_item_tuner: condition.if set value {tag:{EntityTag:{Tags:["TL_SignStand","PermanentStand","ChestTrader","TypeChecked"]}}}
data modify storage player_item_tuner: result.merge set value {tag:{EntityTag:{Tags:["SignStand","PermanentStand","ChestTrader","TypeChecked"]}}}
function #player_item_tuner:modify/inventory

data modify storage player_item_tuner: condition.if set value {tag:{EntityTag:{Tags:["TL_SignStand","PermanentStand","FurnaceTrader","TypeChecked"]}}}
data modify storage player_item_tuner: result.merge set value {tag:{EntityTag:{Tags:["SignStand","PermanentStand","FurnaceTrader","TypeChecked"]}}}
function #player_item_tuner:modify/inventory

data modify storage player_item_tuner: condition.if set value {tag:{EntityTag:{Tags:["TL_SignStand","PermanentStand","FrameTrader","TypeChecked"]}}}
data modify storage player_item_tuner: result.merge set value {tag:{EntityTag:{Tags:["SignStand","PermanentStand","FrameTrader","TypeChecked"]}}}
function #player_item_tuner:modify/inventory

data modify storage player_item_tuner: condition.if set value {tag:{EntityTag:{Tags:["TL_SignStand","PermanentStand","CraftTrader","TypeChecked"]}}}
data modify storage player_item_tuner: result.merge set value {tag:{EntityTag:{Tags:["SignStand","PermanentStand","CraftTrader","TypeChecked"]}}}
function #player_item_tuner:modify/inventory
