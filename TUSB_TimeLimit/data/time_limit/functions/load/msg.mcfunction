#> time_limit:load/msg
# 入ったときにmsg出します
# プレイヤーいるかな検知
execute if entity @a run tellraw @a [{"text":"/function time_limit:settings/","color":"white","bold":false,"underlined": false},{"text":"(クリックで実行)","color": "gray","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value":"/function time_limit:settings/"}},{"text":"\n"},{"text":"を実行することで詳細設定が可能です。","color":"white","bold":false,"underlined": false}]
execute if entity @a run function time_limit:load/load_once_delay
execute unless entity @a run schedule function time_limit:load/msg 1t