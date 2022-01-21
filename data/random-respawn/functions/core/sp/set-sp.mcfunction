# MCID 取得
data modify entity @e[tag=First-SP,limit=1,sort=nearest] data set from entity @s Inventory[{Slot:103b}]
execute if data entity @e[tag=First-SP,limit=1,sort=nearest] {data:{id:"minecraft:player_head",tag:{SkullOwner:{}}}} run tag @s add Did-MCID

# 成功
clear @s[tag=Did-MCID] player_head