execute at @a[scores={death=1..}] run function inferentiel:music/death
execute at @a[scores={death=1..}] as @a[scores={death=1..}] run loot spawn ~ ~ ~ loot inferentiel:bonus/bonus_head_player
tag @e[nbt={Item:{tag:{Tags:["Herobrine_name"]}}}] add Herobrine_name
execute at @a[scores={death=1..}] run summon zombie ~ ~ ~ {CustomNameVisible:1b,Tags:["Herobrine"],CustomName:"{\"text\":\"Herobrine\",\"color\":\"black\",\"bold\":\"true\",\"italic\":\"false\"}",PersistenceRequired:1b,CanPickUpLoot:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}]}
execute at @a[scores={death=1..}] as @e[tag=Herobrine_name,distance=..3] run data modify entity @e[tag=Herobrine,distance=..20,limit=1] CustomName set from entity @e[tag=Herobrine_name,distance=..3,type=item,limit=1] Item.tag.display.Lore[0]
execute at @a[scores={death=1..}] as @e[tag=Herobrine_name,distance=..3] run data modify entity @e[tag=Herobrine,distance=..20,limit=1] ArmorItems[3].tag.SkullOwner set from entity @e[tag=Herobrine_name,distance=..3,type=item,limit=1] Item.tag.SkullOwner
kill @e[tag=Herobrine_name]
execute as @a[scores={death=1..}] at @s run function inferentiel:custom_advancements/keepinventory_custom
execute as @e[tag=Herobrine,distance=..20,limit=1]
execute as @a[scores={death=1..}] run scoreboard players reset @s death