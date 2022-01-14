# load by random-respawn:core/filledmap/get-map
# @s = Mapのdata変更する用ArmorStand
#-------------------------------------------------------------------


data modify entity @s ArmorItems[3] set from storage minecraft:random-respawn FilledMap[0]
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[2] set from storage minecraft:random-respawn FilledMap[1]
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[1] set from storage minecraft:random-respawn FilledMap[2]
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[0] set from storage minecraft:random-respawn FilledMap[3]


# デコレーションケーキ食べたい--------------------------------


### デコレーション実演
data modify entity @s ArmorItems[3].tag merge value {Decorations:[{x:0b,z:0b,type:4b,rot:180.0d,id:""}]}
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[2].tag merge value {Decorations:[{x:0b,z:0b,type:4b,rot:180.0d,id:""}]}
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[1].tag merge value {Decorations:[{x:0b,z:0b,type:4b,rot:180.0d,id:""}]}
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[0].tag merge value {Decorations:[{x:0b,z:0b,type:4b,rot:180.0d,id:""}]}

### みんな乱数ほしい顔してた
function random-respawn:core/random-str/random-str

### 乱数を仲間たちに分け与えよう!
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[2].tag.Decorations[0].id set from entity @s ArmorItems[3].tag.Decorations[0].id
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[1].tag.Decorations[0].id set from entity @s ArmorItems[3].tag.Decorations[0].id
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[0].tag.Decorations[0].id set from entity @s ArmorItems[3].tag.Decorations[0].id


### Pos代入
data modify entity @s ArmorItems[3].tag.Decorations[0].x set from entity @s Pos[0]
data modify entity @s ArmorItems[3].tag.Decorations[0].z set from entity @s Pos[2]
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[2].tag.Decorations[0].x set from entity @s Pos[0]
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[2].tag.Decorations[0].z set from entity @s Pos[2]
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[1].tag.Decorations[0].x set from entity @s Pos[0]
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[1].tag.Decorations[0].z set from entity @s Pos[2]
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[0].tag.Decorations[0].x set from entity @s Pos[0]
execute if score $gm F-Temp matches 4 run data modify entity @s ArmorItems[0].tag.Decorations[0].z set from entity @s Pos[2]


# デコレーションケーキ完成!!!------------------------------------


# Give Map
execute at @s run item replace entity @p armor.head from entity @s armor.head
execute if score $gm F-Temp matches 4 at @s run item replace entity @p inventory.0 from entity @s armor.chest
execute if score $gm F-Temp matches 4 at @s run item replace entity @p inventory.1 from entity @s armor.legs
execute if score $gm F-Temp matches 4 at @s run item replace entity @p inventory.2 from entity @s armor.feet

execute if data entity @p Inventory[{Slot:103b}] run tag @p add MapHat

# bye
execute if data entity @p Inventory[{Slot:103b}] run kill @s

# 失敗した子たち
execute unless data entity @p Inventory[{Slot:103b}] run schedule clear random-respawn:core/filledmap/decoration-map-schedule
execute unless data entity @p Inventory[{Slot:103b}] run schedule function random-respawn:core/filledmap/decoration-map-schedule 1s