# Anywhere Function

This Datapack allows you to run any function at a specified location in storage.  
ストレージで指定した場所で好きなファンクションを実行できるデータパック  

## 動作確認済みバージョン / Verified minecraft versions

- 1.19

## 使い方 / How To Use

### 実行するファンクションの登録 / Register Callback

```json
指定した場所で呼び出したいファンクションの登録  
Registration of a function to be called at a specified location  
  
> anywhere/tags/functions/functions.json  
{  
    "values": [  
        "your_datapack:function_you_want_to_run"  
    ]  
}  
```
  
```nim
呼び出されたファンクションの区別  
Check to see if your function was called.  
  
> your_datapack/functions/function_you_want_to_run.mcfunction  
execute if data storage anywhere: {function:"your_datapack:function_you_want_to_run"} run <好きなコマンドやファンクション / Favorite command or function>
```

### 呼び出し方 / How to call

場所と呼び出すファンクションを指定して、function #anywhere:runを実行  
Specify the location and the function to call.  

```nim
次の記述は execute in minecraft:the_nether positioned 1 2 3 rotated 10 20 run function your_datapack:function_you_want_to_run と同じ
  
data modify storage anywhere: at set value {Pos:[1d,2d,3d],Rotation:[10f,20f],Dimension:"minecraft:the_nether"}  
data modify storage anywhere: function set value "your_datapack:function_you_want_to_run"  
function #anywhere:run
```

## 連絡はこちら/Contact

<https://twitter.com/AiAkaishi>

## ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
