execute store result score @s randomBonus run data get entity @s Attributes[5].Modifiers[0].Amount 10000
tag @s add getrdm
execute if score @s randomBonus matches -499..299 run data modify entity @s Offers.Recipes append value {maxUses:1,buy:{id:"minecraft:emerald",Count:32b},sell:{id:"minecraft:chest",tag:{display:{Name:"{\"text\":\"Tier I\",\"color\":\"white\"}"},BlockEntityTag:{LootTable:"inferentiel:chests/tier_i/chests_i"}},Count:1b},xp:20,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,rewardExp:1b}
execute if score @s randomBonus matches 300..999 run data modify entity @s Offers.Recipes append value {maxUses:1,buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:chest",tag:{display:{Name:"{\"text\":\"Tier II\",\"color\":\"green\"}"},BlockEntityTag:{LootTable:"inferentiel:chests/tier_ii/chests_ii"}},Count:1b},xp:20,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,rewardExp:1b}
execute if score @s randomBonus matches -799..-500 run data modify entity @s Offers.Recipes append value {maxUses:1,buy:{id:"minecraft:emerald_block",Count:4b},sell:{id:"minecraft:chest",tag:{display:{Name:"{\"text\":\"Tier III\",\"color\":\"blue\"}"},BlockEntityTag:{LootTable:"inferentiel:chests/tier_iii/chests_iii"}},Count:1b},xp:20,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,rewardExp:1b}
execute if score @s randomBonus matches ..-800 run data modify entity @s Offers.Recipes append value {maxUses:1,buy:{id:"minecraft:emerald_block",Count:8b},sell:{id:"minecraft:chest",tag:{display:{Name:"{\"text\":\"Tier IV\",\"color\":\"dark_purple\"}"},BlockEntityTag:{LootTable:"inferentiel:chests/tier_iv/chests_iv"}},Count:1b},xp:20,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,rewardExp:1b}
execute if score @s randomBonus matches 1000.. run data modify entity @s Offers.Recipes append value {maxUses:1,buy:{id:"minecraft:emerald_block",Count:16b},sell:{id:"minecraft:chest",tag:{display:{Name:"{\"text\":\"Tier V\",\"color\":\"gold\"}"},BlockEntityTag:{LootTable:"inferentiel:chests/tier_v/chests_v"}},Count:1b},xp:20,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,rewardExp:1b}