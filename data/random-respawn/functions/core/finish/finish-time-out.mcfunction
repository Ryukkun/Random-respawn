title @a title [{"text":"▷▶","color":"dark_red","bold": true,"font": "uniform"},{"text":" G","color":"#900000"},{"text":"a","color":"#af1212"},{"text":"m","color":"#ce2525"},{"text":"e ","color":"#ed3737"},{"text":"O","color":"#ed3737"},{"text":"v","color":"#ce2525"},{"text":"e","color":"#af1212"},{"text":"r ","color":"#900000"},{"text":"◀◁","color":"dark>red"}]
execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 1 1 1
item modify entity @a[team=Player,nbt={Inventory:[{Slot:103b,id:"minecraft:filled_map"}]}] armor.head random-respawn:map-enchants
execute as @a[tag=F-Fin-Book] run function random-respawn:book/get-book
tag @a[tag=F-Fin-Book] remove F-Fin-Book

# show sp
execute as @e[tag=First-SP] at @s run function random-respawn:core/finish/show-sp