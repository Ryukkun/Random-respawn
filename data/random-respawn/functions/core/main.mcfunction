# load from random-respawn:tick
# ゲーム中常にload
#---------------------

# timer
function random-respawn:core/timer

# meet
function random-respawn:core/meet/meet-detect

# 初期リスに戻った時
execute as @a[team=Player] at @s unless data entity @s SpawnX run function random-respawn:core/sp/tp-sp

# finish Time Out
execute if score $Timer F-Timer matches 0 run function random-respawn:core/finish/finish-time-out

# FilledMap
execute if score $gm F-Temp matches 1..3 if data storage random-respawn: {Setting:[{MapEnable:1b}]} run item replace entity @a[team=Player,nbt=!{Inventory:[{Slot:103b,id:"minecraft:filled_map"}]}] armor.head from entity @e[tag=map-center,limit=1] armor.head
execute if score $gm F-Temp matches 1..3 if data storage random-respawn: {Setting:[{MapEnable:1b}]} run item replace entity @a[team=Spec,nbt=!{Inventory:[{Slot:0b,id:"minecraft:filled_map"}]}] hotbar.0 from entity @e[tag=map-center,limit=1] armor.head
execute if score $gm F-Temp matches 1..3 if data storage random-respawn: {Setting:[{MapEnable:1b}]} run kill @e[nbt={Item:{tag:{RandomRespawn:{tag:3b}}}}]

# プレイ中に抜けちゃったの？
execute as @a[scores={F-Leave=1..}] unless score @s F-GameCount = $ F-GameCount run function random-respawn:team/join-in-play

# Map 範囲内か
execute if score $Timer F-Timer <= $HintTimer F-Timer run function random-respawn:core/in-map/player
function random-respawn:core/in-map/spec

# actionbar
function random-respawn:core/actionbar/actionbar

# Spec particle
execute if score $0.5 F-Timer matches 0 as @a[team=Spec] at @s positioned ~ ~0.2 ~ unless entity @p[distance=..30,team=Player] facing entity @p[team=Player] feet run function random-respawn:core/spec/spec-particle

# Spec Effect
effect give @a[team=Spec,gamemode=spectator] invisibility 1 0 true
effect give @a[team=Spec] night_vision 100 0 true