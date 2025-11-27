#> time_limit:settings/boss_enhance/field_generate/generate

# ボス強化がonならフィールドを生成します
# forceloadつけないと読み込まれない

# 個別実行するときとfunctionで一括実行するときで座標がずれる、、

# KBF生成

place template time_limit:boss_field/boss_field_top ~ ~ ~-45 none none
place template time_limit:boss_field/boss_field_top ~44 ~ ~ clockwise_90 none
place template time_limit:boss_field/boss_field_top ~-1 ~ ~44 180 none
place template time_limit:boss_field/boss_field_top ~-45 ~ ~-1 counterclockwise_90 none

place template time_limit:boss_field/boss_field_under_0 ~ ~-45 ~-45 none none
place template time_limit:boss_field/boss_field_under_90 ~ ~-45 ~ none none
place template time_limit:boss_field/boss_field_under_180 ~-45 ~-45 ~ none none
place template time_limit:boss_field/boss_field_under_270 ~-45 ~-45 ~-45 none none


# 王の間スポナー書き換え(ワープ用)
execute in the_end run setblock -1388 206 9 cobweb
execute in the_end run summon armor_stand -1388 206 9 {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["Boss_Enter"],DisabledSlots:4144959}