#> asset:mob/4203.heaven_mage/summon/2.summon

# functionの4203.heaven_mageの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/4203.heaven_mage/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/