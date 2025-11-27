#> time_limit:tick/player_tick
#
#> @sで実行できるようにした
#
#

### トリガー
execute if entity @s[scores={SneakingTime=1..}] run function time_limit:player/trigger/sneak
execute if entity @s[scores={SneakFrequency=1..}] run function time_limit:player/trigger/sneak_frequency

### プレイヤーゲーム設定
execute unless score @s ShowMenu matches 0 run function time_limit:login/triggerd

### スキル変更設定
execute unless score @s ChangeSkillSet matches 0 run function time_limit:player/display/skillset
execute unless score @s SkillSetting matches 0 run function time_limit:player/display/skilldisplay