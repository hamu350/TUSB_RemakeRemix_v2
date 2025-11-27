#> tusb_remake:hcmode/settings
# １分後にハードコアモードにする

schedule function tusb_remake:hcmode/start 60s
tellraw @a [{"text":"一分後","color":"dark_red"},{"text":"、","color":"white"},{"text":"ハードコアモード","bold":true},{"text":"にします...","color":"white"},{"text":"\n止める場合一番下の「通常モードにする」をクリックしてください。","color":"green"},{"text":"\nハードコアモードとは","color":"white"},{"text":"\n・死亡時","color":"white"},{"text":"スペクテイターモード","color":"yellow"},{"text":"になり、","color":"white"},{"text":"死亡者"},{"text":"になります。","color":"white"},{"text":"\n・","color":"white"},{"text":"1島攻略する"},{"text":"ことで死亡者","color":"white"},{"text":"全員","color":"dark_purple"},{"text":"を初期地点に","color":"white"},{"text":"復活"},{"text":"させます。","color":"white"},{"text":"\n通常モードにする","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"逃げるが勝ちですよ？","color":"dark_aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger hcmode set 1"}}]
playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 1.0 0.5 0.0
scoreboard players enable @a hcmode