data merge entity @s {CustomNameVisible:1b,CustomName:"{\"text\":\"Boss\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"false\"}"}
attribute @s minecraft:generic.max_health modifier add 2e01374b-4b37-4cc1-ad16-fceeeb064744 ufc_health_b 19 multiply_base
attribute @s minecraft:generic.movement_speed modifier add 1c726405-21d9-4dc1-8fbc-b6924fda965f ufc_speed_b 0.1 multiply_base
attribute @s minecraft:generic.attack_damage modifier add f7c72ef2-0a3f-424f-a34e-2fa33791b7a4 ufc_damage_b 2 multiply_base
attribute @s minecraft:generic.follow_range base set 50
attribute @s minecraft:generic.spawn_reinforcements modifier add be72bc19-601b-496b-9a28-7151554d77c3 ufc_spawn_b 1 add
data modify entity @s Health set value 400.0f
data modify entity @s DeathLootTable set value "inferentiel:entities/boss/zombie"