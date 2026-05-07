#> asset:mob/0001.existing_example/readme.mcfunction

# 既存のmobを追加する方法
# とりあえず0001.existing_exampleを複製します
# そうしたらまず、mob/id.txtを見て追加したいmobのidを確かめます。なかったら追加して
# 次に、そのmobのフォルダを作ります。例：0010.deadra
# このファイルを除く４つのファイルを開き、中の説明に沿って編集します
# 最後にmobを登録します
function #asset:mob/get_data
# このfunctionsに、data/1.triggerを入れます
function #asset:mob/summon
# このfunctionsにはsummon/1.triggerを入れます
# おわり！分からないことがあったらmocopeに聞いてください。いなかったら他のやってる人に聞いて