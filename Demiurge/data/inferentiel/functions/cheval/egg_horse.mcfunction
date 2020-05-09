particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 1 15 force
playsound minecraft:entity.endermen.teleport ambient @a[distance=..10]
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:horse_spawn_egg",Count:1,tag:{CanPlaceOn:["minecraft:grass_block","minecraft:sand","minecraft:stone","minecraft:air"]}}}

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] store result score vie cheval run attribute @e[type=horse,distance=..3,limit=1,sort=nearest] minecraft:generic.max_health get 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] store result score knockback cheval run attribute @e[type=horse,distance=..3,limit=1,sort=nearest] minecraft:generic.attack_knockback get 100000
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] store result score vitesse cheval run attribute @e[type=horse,distance=..3,limit=1,sort=nearest] minecraft:generic.movement_speed get 100000
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] store result score armure cheval run attribute @e[type=horse,distance=..3,limit=1,sort=nearest] minecraft:generic.armor get 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] store result score resistance cheval run attribute @e[type=horse,distance=..3,limit=1,sort=nearest] minecraft:generic.knockback_resistance get 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] store result score follow cheval run attribute @e[type=horse,distance=..3,limit=1,sort=nearest] minecraft:generic.follow_range get 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] store result score saut cheval run attribute @e[type=horse,distance=..3,limit=1,sort=nearest] minecraft:horse.jump_strength get 100000
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] store result score variant cheval run data get entity @e[type=horse,distance=..3,limit=1,sort=nearest] Variant 1

data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] Item.tag.EntityTag.Attributes set from entity @e[type=horse,distance=..3,limit=1,sort=nearest] Attributes

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] run function inferentiel:cheval/stats_horse
data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] Item.tag.EntityTag.Variant set from entity @e[type=horse,distance=..3,limit=1,sort=nearest] Variant
data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] Item.tag.EntityTag.SaddleItem set from entity @e[type=horse,distance=..3,limit=1,sort=nearest] SaddleItem
data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] Item.tag.EntityTag.Tame set from entity @e[type=horse,distance=..3,limit=1,sort=nearest] Tame
data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] Item.tag.EntityTag.ArmorItems set from entity @e[type=horse,distance=..3,limit=1] ArmorItems
data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] Item.tag.EntityTag.Age set from entity @e[type=horse,distance=..3,limit=1,sort=nearest] Age
data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:horse_spawn_egg"}},distance=..3,limit=1,sort=nearest] Item.tag.display.Name set from entity @e[type=horse,distance=..3,limit=1,sort=nearest] CustomName
data merge entity @e[type=horse,distance=..3,limit=1,sort=nearest] {DeathTime:19,Silent:1}
teleport @e[type=horse,distance=..3,limit=1,sort=nearest] ~ -10 ~
kill @s