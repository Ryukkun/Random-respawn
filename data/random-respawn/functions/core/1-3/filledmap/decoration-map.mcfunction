# load by random-respawn:core/filledmap/get-map
# @s = Mapのdata変更する用ArmorStand
#-------------------------------------------------------------------


data modify entity @s ArmorItems[3] set from entity @e[tag=map-center,limit=1] ArmorItems[3]


# デコレーションケーキ食べたい--------------------------------


### デコレーション実演
data modify entity @s ArmorItems[3].tag merge value {Decorations:[{x:0b,z:0b,type:4b,rot:180.0d,id:""}]}

### みんな乱数ほしい顔してた
function random-respawn:core/random-str/random-str


### Pos代入
data modify entity @s ArmorItems[3].tag.Decorations[0].x set from entity @s Pos[0]
data modify entity @s ArmorItems[3].tag.Decorations[0].z set from entity @s Pos[2]


# デコレーションケーキ完成!!!------------------------------------


# Give Map
execute at @s run item replace entity @p armor.head from entity @s armor.head

execute if data entity @p Inventory[{Slot:103b}] run tag @p add Did-Head

# bye
execute if data entity @p Inventory[{Slot:103b}] run kill @s

# 失敗した子たち
execute unless data entity @p Inventory[{Slot:103b}] run schedule clear random-respawn:core/filledmap/decoration-map-schedule
execute unless data entity @p Inventory[{Slot:103b}] run schedule function random-respawn:core/filledmap/decoration-map-schedule 1s