team join Spec @s
execute if score $spec-gm F-Temp matches 1 run gamemode creative @s
execute if score $spec-gm F-Temp matches 2 run gamemode spectator @s
execute at @e[tag=map-center,limit=1] run tp @s @p[team=Player]
tellraw @a[tag=F-Fin-Book] [{"text":"Info ","color":"dark_green"},{"text":": ","color":"white"},{"selector":"@s","color":"gray","bold":true},{"text":" を、","color":"green"},{"text":"途中参加させる","color":"yellow","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"クリックしたら コマンドが提案されるので、 \"プレイヤー名\" を 途中参加させたいプレイヤー名 に書き換えてから実行してください"}]},"clickEvent":{"action":"suggest_command","value":"/execute as プレイヤー名 run function random-respawn:team/join-middle"}},{"text":"ことができます","color":"green"}]
execute at @s run playsound minecraft:entity.guardian.death master @s ~ ~ ~ 2 1 1