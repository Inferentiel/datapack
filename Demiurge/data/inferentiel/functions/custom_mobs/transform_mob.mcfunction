execute if entity @s[type=vindicator] run summon minecraft:illusioner
execute if entity @s[type=vindicator] run tp ~ -5 ~
execute if entity @s[type=zombified_piglin] run summon minecraft:zombie_horse ~ ~ ~ {Tame:1,Passengers:[{id:"minecraft:zombified_piglin",HandItems:[{id:"minecraft:golden_axe",Count:1b},{}]}]}
execute if entity @s[type=zombified_piglin] run tp ~ -5 ~
execute if entity @s[type=shulker] run summon rabbit ~ ~ ~ {RabbitType:99}
execute if entity @s[type=shulker] run tp ~ -5 ~
execute if predicate inferentiel:zoglin_area if entity @s[type=zombie] run summon zoglin ~ ~ ~
execute if predicate inferentiel:zoglin_area if entity @s[type=zombie] run tp ~ -5 ~
execute if predicate inferentiel:biomes/soul_sand_valley if entity @s[type=skeleton] run summon zombie_villager ~ ~ ~
execute if predicate inferentiel:biomes/soul_sand_valley if entity @s[type=skeleton] run tp ~ -5 ~
execute if predicate inferentiel:biomes/warped_forest if entity @s[type=enderman] run summon wandering_trader ~ ~ ~ {DespawnDelay:6000}
execute if predicate inferentiel:biomes/warped_forest if entity @s[type=enderman] run tp ~ -5 ~