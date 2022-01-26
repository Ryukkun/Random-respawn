# MCID 取得
data modify entity @s data set from entity @p Inventory[{Slot:103b}]
execute if data entity @s {data:{id:"minecraft:player_head",tag:{SkullOwner:{}}}} run tag @p add Did-MCID

# 成功
execute if data entity @s {data:{id:"minecraft:player_head",tag:{SkullOwner:{}}}} run clear @p player_head