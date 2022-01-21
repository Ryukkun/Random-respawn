data modify entity @s data set from entity @p Inventory[{Slot:17b}]
execute if data entity @s {data:{id:"minecraft:player_head",tag:{SkullOwner:{}}}} run tag @s add Did-MCID


#成功
execute as @s[tag=Did-MCID] run clear @p player_head