#> tusb_remake:isfmode/settings
# １分後にハードコアモードにする

schedule function tusb_remake:isfmode/start 60s
tellraw @a [{"text":"一分後","color":"dark_aqua"},{"text":"、","color":"white"},{"text":"トカルトモード","bold":true},{"text":"にします...","color":"white"},{"text":"\n止める場合一番下の「通常モードにする」をクリックしてください。","color":"green"},{"text":"\nトカルトモードとは","color":"white"},{"text":"\n・","color":"white"},{"text":"テーブルマウンテン以外","color":"yellow"},{"text":"の全ディメンションが","color":"white"},{"text":"トカルトの冷気に包まれます"},{"text":"\n・","color":"white"},{"text":"篝火","color":"dark_red"},{"text":"を","color":"white"},{"text":"交易","color":"yellow"},{"text":"できる","color":"white"},{"text":"村人","color":"yellow"},{"text":"が","color":"white"},{"text":"交易島","color":"yellow"},{"text":"に訪れます。","color":"white"},{"text":"\n通常モードにする","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"逃げた方がいいですよ？","color":"dark_aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger isfmode set 1"}}]
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.0 0.5 0.0
scoreboard players enable @a isfmode