#> time_limit:tick/first_player

# TUSB側の初期join割り込みがめんどくさいから割り切ってtagで別判断
# tag付与
tag @s add Joined
# チュートリアル進捗give
# advancement grant @s from time_limit:tutorial/start
# クエストライン最初の進捗
# advancement grant @s only time_limit:time_limit_mission/root

# スコアの設定
# これを設定してあげないとjoin時にmsgがいっぱい出ちゃう
scoreboard players set @s ChangeSkillSet 0
scoreboard players set @s SkillSetting 0

# triggerのenable
scoreboard players enable @s ChangeSkillSet

# メニューはrejoinedで勝手に検知してくれるからenable入れなくてもトリガーが勝手に再度有効化されるっていう罠


# msg
function time_limit:load/tutorial_msg

# bossbar表示
bossbar set time_limit:timer players @s
# ボスいるときはボスバー隠すからこの処理が効いてくる