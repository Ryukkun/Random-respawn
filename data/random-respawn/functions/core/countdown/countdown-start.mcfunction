#### Cound

schedule function random-respawn:core/countdown/count/1 6s append
schedule function random-respawn:core/countdown/count/2 5s append
schedule function random-respawn:core/countdown/count/3 4s append
tellraw @a {"text":"まもなく開始します\n開始時はとても重くなるので 注意してください"}




#### インベントリ取得

# reset storage
data remove storage random-respawn: FilledMap

# Get filled_map
execute if data storage random-respawn: {Setting:[{MapEnable:1b}]} run data modify storage random-respawn: FilledMap append from entity @s Inventory.[{Slot:-106b}]




#### その他
tag @s add F-Fin-Book
scoreboard players set $Timer F-Timer -2