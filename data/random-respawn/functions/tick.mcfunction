#tick
#----------

#Count Down
execute if score $CountDown F-Timer matches 0.. run function random-respawn:core/countdown/count-down

#Main Game
execute if score $Timer F-Timer matches 0.. run function random-respawn:core/main

#Team Trigger
execute as @a[scores={F-Trigger=1..2}] if score $Timer F-Timer matches -1 run function random-respawn/team/trigger-join
execute as @a[scores={F-Trigger=1..2}] if score $Timer F-Timer matches 0.. run tellraw @s [{"text":"  "},{"text":" ","color":"#900000","strikethrough":true},{"text":"|","color":"#950303","strikethrough":true},{"text":"| ","color":"#9b0606","strikethrough":false},{"text":"プ","color":"#a00a0a"},{"text":"レ","color":"#a60d0d"},{"text":"イ","color":"#ab1010"},{"text":"中","color":"#b11313"},{"text":"は","color":"#b61616"},{"text":"チ","color":"#bc1a1a"},{"text":"ー","color":"#c11d1d"},{"text":"ム","color":"#c72020"},{"text":"を","color":"#cc2323"},{"text":"変","color":"#d12626"},{"text":"更","color":"#d72a2a"},{"text":"で","color":"#dc2d2d"},{"text":"き","color":"#e23030"},{"text":"ま","color":"#e73333"},{"text":"せ","color":"#ed3636"},{"text":"ん","color":"#f23a3a"},{"text":"。","color":"#f83d3d"}]

