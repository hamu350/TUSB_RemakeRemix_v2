#> time_limit:load/scoreboard_make

# 命名規則ごっちゃごちゃなの将来的にどうにかしたい

# load_once妨害用スコアtrigger
scoreboard players set loaded loaded 1

# 印判用代入スコア
scoreboard objectives add TUSB_sub dummy

# 嫌な予感追加対処用
scoreboard objectives add ChooseEvent dummy

# クロスボウ検知
scoreboard objectives add UseCrossBow minecraft.used:minecraft.crossbow

# 実績用スコア
scoreboard objectives add ConquerIsland dummy

# timer用スコアボード
# timeってスコアに統合してそれ以外の名前をscoreholderにしてもいいんじゃないかなって
scoreboard objectives add Timer dummy
scoreboard objectives add Sec dummy
scoreboard objectives add Min dummy
scoreboard objectives add Hour dummy
# total time計測用スコア(主に時間経過で強くなる系に反映するため)
# playtimeは実プレイヤーしか入らないのである！
scoreboard objectives add Spend_Time dummy
scoreboard objectives add Spend_Hour dummy
scoreboard players set Time Spend_Hour 0
# s,m,hをtickで割るときの値(scoreboard operation)
scoreboard players set $Time_to_Sec Timer 20
scoreboard players set $Time_to_Min Timer 1200
scoreboard players set $Time_to_Hour Timer 72000
# 設定項目確認用スコア
scoreboard objectives add Option dummy
# スタート判別用スコア
scoreboard objectives add Game dummy
scoreboard players set Start Game 0
# 0 スタートしてない
# 1 スタート
# 2 タイマー一時停止orクリア後

# 設定項目デフォルト値
# normal true true true(diffが1,2,3で ez,normal,hard その他オプションが t/f 0,1)
# normalのオプション値
scoreboard players set Time Timer 72000
scoreboard players set Difficulty Option 2
scoreboard players set Max_Time Timer 72000
# オプション全部有効化
scoreboard players set Time_Shield Option 1
scoreboard players set Clock_Island Option 1
scoreboard players set Enhance_Boss Option 1

# メニュートリガースコア
scoreboard objectives add _ dummy {"text":"一時変数"}
scoreboard objectives add ShowMenu trigger {"text": "メニュー表示"}
scoreboard objectives add ChangeSkillSet trigger {"text": "スキル変更表示"}
scoreboard objectives add SkillSetting trigger {"text": "スキル設定表示"}
scoreboard objectives add SneakingTime minecraft.custom:sneak_time {"text":"スニーク時間"}
scoreboard objectives add SneakFrequency dummy {"text":"スニーク頻度"}

#エンカウントスコア
scoreboard objectives add RandomEncount dummy {"text": "エンカウントスコア"}

# 死亡検知用スコア
scoreboard objectives add DeathCount deathCount

# 時計島仕様変更用検知スコア
scoreboard objectives add Changed_Form dummy

# 時送りの盾仕様変更用スコア

scoreboard objectives add After_Version dummy
scoreboard objectives add Modifier_Amount dummy

# mob attribute代入用スコア
scoreboard objectives add MobAttribute dummy

# ボス演出用スコア
scoreboard objectives add MakeupTick dummy
# ボススキル用スコア
scoreboard objectives add Blackhole dummy
# ボス初突入かどうか
scoreboard objectives add Enter_Boss dummy
scoreboard players set First Enter_Boss 0
# ボス戦闘中かどうか
scoreboard objectives add FightingBoss dummy
scoreboard players set Flag FightingBoss 0

# ボスHP代入用
scoreboard objectives add Boss_Health dummy
# mobの最大体力の100倍スコア
scoreboard players set $Default_Health Boss_Health 102400
# 先にhealthを仮置きしておかないとバグりそうで怖いので入れておく
scoreboard players set Health Boss_Health 3072000

# ボス系統倍率用スコア
scoreboard objectives add Boss_x dummy
scoreboard players set $percent_10 Boss_x 10
scoreboard players set $5 Boss_x 5
scoreboard players set $20 Boss_x 20
scoreboard players set $25 Boss_x 25
scoreboard players set $30720 Boss_x 30720
scoreboard players set $100 Boss_x 100
scoreboard players set $10 Boss_x 10