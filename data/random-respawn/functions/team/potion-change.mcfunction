# Team Change
team join Player @a[tag=Had-P-Lp,scores={F-Used-Lp=1..}]
team join Spec @a[tag=Had-S-Lp,scores={F-Used-Lp=1..}]

#### creative 用
clear @a[tag=Had-P-Lp,scores={F-Used-Lp=1..}] lingering_potion{RandomRespawn:[{tag:1b}]}
clear @a[tag=Had-S-Lp,scores={F-Used-Lp=1..}] lingering_potion{RandomRespawn:[{tag:1b}]}

#### sound
stopsound @a[tag=Had-P-Lp,scores={F-Used-Lp=1..}] * entity.lingering_potion.throw
stopsound @a[tag=Had-S-Lp,scores={F-Used-Lp=1..}] * entity.lingering_potion.throw
execute as @a[tag=Had-P-Lp,scores={F-Used-Lp=1..}] at @s run playsound minecraft:block.piston.extend master @s ~ ~ ~ 0.7 2 1
execute as @a[tag=Had-S-Lp,scores={F-Used-Lp=1..}] at @s run playsound minecraft:block.piston.contract master @s ~ ~ ~ 0.7 2 1

#### kill
kill @e[type=potion,nbt={Item:{tag:{RandomRespawn:[{tag:1b}]}}}]
kill @e[type=item,nbt={Item:{tag:{RandomRespawn:[{tag:1b}]}}}]

#### Tag
tag @a remove Had-P-Lp
tag @a remove Had-S-Lp
tag @a[nbt={SelectedItem:{id:"minecraft:lingering_potion",tag:{RandomRespawn:[{gm:2b}]}}}] add Had-P-Lp
tag @a[nbt={SelectedItem:{id:"minecraft:lingering_potion",tag:{RandomRespawn:[{gm:1b}]}}}] add Had-S-Lp

#### survival 用
execute as @a[gamemode=!creative] unless data entity @s {Inventory:[{Slot:8b,id:"minecraft:lingering_potion"}]} run clear @s lingering_potion{RandomRespawn:[{tag:1b}]}

#### Potion 補給
execute as @a[team=Player] unless data entity @s {Inventory:[{Slot:8b}]} run item replace entity @s hotbar.8 with lingering_potion{display:{Name:'[{"text":"参加","color":"green","bold":true,"italic":false},{"text":"（右クリック）","color":"gray","bold":false,"italic":true}]',Lore:['[{"text":"右クリックで","color":"yellow","bold":false},{"text":" 参加","color":"green","bold":true},{"text":"・","color":"white","bold":true},{"text":"観戦 ","color":"gray","bold":true},{"text":"を切り替え","color":"yellow","bold":false}]']},HideFlags:127,Enchantments:[{}],CustomPotionColor:65280,RandomRespawn:[{gm:1b},{tag:1b}]} 1
execute as @a[team=Spec] unless data entity @s {Inventory:[{Slot:8b}]} run item replace entity @s hotbar.8 with lingering_potion{display:{Name:'[{"text":"観戦","color":"white","bold":true,"italic":false},{"text":"（右クリック）","color":"gray","bold":false,"italic":true}]',Lore:['[{"text":"右クリックで","color":"yellow","bold":false},{"text":" 参加","color":"green","bold":true},{"text":"・","color":"white","bold":true},{"text":"観戦 ","color":"gray","bold":true},{"text":"を切り替え","color":"yellow","bold":false}]']},HideFlags:127,CustomPotionColor:13421772,RandomRespawn:[{gm:2b},{tag:1b}]} 1


scoreboard players set @a F-Used-Lp 0