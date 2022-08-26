item modify entity @a[team=Player,nbt={Inventory:[{Slot:103b,id:"minecraft:filled_map"}]}] armor.head random-respawn:map-enchants
execute as @a[tag=F-Fin-Book] run function random-respawn:book/get-book
tag @a[tag=F-Fin-Book] remove F-Fin-Book
effect clear @a[team=Spec] night_vision
team modify Spec prefix [{"text":" ","color":"#6a6a6a","strikethrough":true},{"text":"|","color":"#7f7f7f"},{"text":"|","color":"#959595","strikethrough":false},{"text":"観","color":"#c1c1c1","strikethrough":false},{"text":"戦","color":"#c1c1c1","strikethrough":false},{"text":"|","color":"#959595","strikethrough":false},{"text":"|","color":"#7f7f7f"},{"text":" ","color":"#6a6a6a"},{"text":" ","strikethrough":false}]
team modify Player prefix [{"text":" ","color":"#008e12","strikethrough":true},{"text":"|","color":"#1aaa28","strikethrough":true},{"text":"|","color":"#34c73e","strikethrough":false},{"text":"参","color":"#4de353","strikethrough":false},{"text":"加","color":"#4de353","strikethrough":false},{"text":"|","color":"#34c73e","strikethrough":false},{"text":"|","color":"#1aaa28","strikethrough":true},{"text":" ","color":"#008e12","strikethrough":true},{"text":" ","strikethrough":false}]

# show sp
execute as @e[tag=First-SP] at @s run function random-respawn:core/finish/show-sp