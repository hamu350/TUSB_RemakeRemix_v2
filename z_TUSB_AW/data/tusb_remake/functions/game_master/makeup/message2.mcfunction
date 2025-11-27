#> time_limit:boss/newstar_king/makeup/message2
#
#> なんかメッセージ出します
#> message1が出てから1.5秒後ぐらいに実行
#

#> メッセージとカウント設定
execute as @a[distance=..15] run tellraw @s [{"translate":"%1$sはきたるべき戦いに備えた。","color":"#ff0000","bold":true,"obfuscated":false,"with":[{"selector":"@a[distance=..32]"}]}]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CountDown set value 10