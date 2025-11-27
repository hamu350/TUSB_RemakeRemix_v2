#> asset:mob/4201.marmalade/summon/2.summon

# functionの0001.existing_exampleの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/4201.marmalade/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/