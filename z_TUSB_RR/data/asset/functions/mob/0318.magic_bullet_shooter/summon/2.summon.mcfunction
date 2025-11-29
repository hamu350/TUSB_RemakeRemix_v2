#> asset:mob/0318.magic_bullet_shooter/summon/2.summon

# functionの0318.magic_bullet_shooterの変えたフォルダの名前にする(例:0010.deadra)
function asset:mob/0318.magic_bullet_shooter/data/2.data_set
# AiUtilを使ってmobを召喚します
data modify storage util: in set from storage asset: mob
function util:spawn/