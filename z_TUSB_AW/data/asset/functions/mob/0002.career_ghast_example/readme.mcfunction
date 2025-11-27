#> asset:mob/0000.example/readme.mcfunction

# mobを作りたい場合、まずはmob/0000.exampleをコピーして同階層(asset/functions/mob/)に張り付けます
# 次にファイル名を<id>.<mob名>に変えます。
# 中のこれを除く四つのファイルの中のfunctionのパスと{id:0}となっている部分を修正します(このファイルは削除するので良いです)
# 次に、mobを登録します
function #asset:mob/get_data
# このfunctionsに、data/1.triggerを入れます
# function #asset:mob/summon
# まだありませんが、このfunctionsにはsummon/1.triggerを入れます

# そうしたら、いよいよmob作りです
# data/2.data_set
# このfunctionを開き、中の説明にそってmobを作ります

# 完成！お疲れ様でした
# asset:context idに設定したidを入れて#asset:mob/summonなどを実行すれば、mobが出てきます。直接functionを呼び出しても構いません
