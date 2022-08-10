# load by random-respawn:core/filledmap/get-map
# @s = Mapのdata変更する用ArmorStand
#-------------------------------------------------------------------


data modify entity @s ArmorItems[2] set from entity @e[tag=map-center,limit=1] ArmorItems[3]


# デコレーションケーキ食べたい--------------------------------


### デコレーション実演
data modify entity @s ArmorItems[2].tag set value {Decorations:[{x:0b,z:0b,type:4b,rot:180.0d,id:""}]}

### みんな乱数ほしい顔してた
function random-respawn:core/random-str/random-str


### Pos代入
data modify entity @s ArmorItems[2].tag.Decorations[0].x set from entity @s Pos[0]
data modify entity @s ArmorItems[2].tag.Decorations[0].z set from entity @s Pos[2]


# デコレーションケーキ完成!!!------------------------------------

data modify entity @e[tag=map-center,limit=1] ArmorItems[3].tag.Decorations append from entity @s ArmorItems[2].tag.Decorations[0]