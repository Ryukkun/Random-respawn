#   load by random-respawn:tick
#
#   GM変更時に Map-Center変更の 告知
#-------------------------------------------------------

tellraw @a[nbt={SelectedItem:{tag:{RandomRespawn:[{tag:2b}]}}}] [{"text":"Warning","color":"yellow"},{"text":" : マップ範囲を変更したため、\n            選択されていたマップを自動的に "},{"text":"Reset","color": "red"},{"text": " しました\n            設定本 の2ページから 再び設定する必要があります"}]

execute at @e[tag=map-center] run forceload remove ~ ~
kill @e[tag=map-center]