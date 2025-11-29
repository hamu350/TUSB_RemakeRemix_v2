#> tusb_remake:tlmode/settings
# １分後にハードコアモードにする

schedule function tusb_remake:tlmode/start 60s
tellraw @a [{"text":"一分後","color":"aqua"},{"text":"、","color":"white"},{"text":"タイムリミットモード","bold":true},{"text":"にします...","color":"white"},{"text":"\n止める場合一番下の「通常モードにする」をクリックしてください。","color":"green"},{"text":"\nタイムリミットモードとは","color":"white"},{"text":"\n・","color":"white"},{"text":"時間制限","color":"yellow"},{"text":"の","color":"white"},{"text":"ボスバー"},{"text":"が追加されます。","color":"white"},{"text":"\n・","color":"white"},{"text":"1島攻略する"},{"text":"ことで","color":"white"},{"text":"時間制限","color":"yellow"},{"text":"が","color":"white"},{"text":"難度によって増えます。"},{"text":"\n・","color":"white"},{"text": "※適用時には必ずチャット欄に出てくる","color": "red"},{"text":"TLEの設定","color":"dark_red"},{"text":"をしてください","color":"red"},{"text":"\n通常モードにする","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"止めるが吉ですよ？","color":"dark_aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger tlmode set 1"}}]
playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 1.0 0.5 0.0
scoreboard players enable @a tlmode
