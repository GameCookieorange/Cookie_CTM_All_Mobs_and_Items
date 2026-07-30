scoreboard objectives add orange_timer dummy
scoreboard objectives add orange_debug dummy

scoreboard objectives add orange_math dummy

scoreboard objectives add orange_3d_steady_talisman_timer dummy
scoreboard objectives add orange_sky_protector_timer dummy
scoreboard objectives add orange_harvest_timer dummy

scoreboard objectives add orange_damage_coward_critic dummy

scoreboard objectives add orange_bury_the_light_timer minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add orange_bury_the_light_cd dummy
scoreboard objectives add orange_bury_the_light_attack dummy
scoreboard players add @a orange_bury_the_light_cd 0
scoreboard players add @a orange_bury_the_light_attack 0

scoreboard objectives add orange_sky_claymore_attack dummy
scoreboard objectives add orange_sky_claymore_cd dummy
scoreboard players add @a orange_sky_claymore_attack 0
scoreboard players add @a orange_sky_claymore_cd 0
scoreboard objectives add orange_sky_claymore_wave dummy

scoreboard objectives add orange_purple_cheer_baton dummy
scoreboard players add @a orange_purple_cheer_baton 0

scoreboard objectives add orange_cloud_collector_timer dummy

scoreboard objectives add orange_panic_button_cd dummy
scoreboard players add @a orange_panic_button_cd 0
scoreboard objectives add about_to_use_panic_button dummy
scoreboard players add @a about_to_use_panic_button 0


# =============================================================

scoreboard objectives add orange_music_timer dummy
scoreboard players set @a orange_music_timer 0

scoreboard objectives add orange_falling_timer dummy

team add orange_floating_creeper
team add orange_falling_creeper
team add orange_wind_charge_zombie
team add orange_wind_charge_drowned

# team add monster_army "Monster Force"

team add orange_friendly "Orange Team"
team join orange_friendly @a
team modify orange_friendly friendlyFire true
team modify orange_friendly seeFriendlyInvisibles false

team modify orange_floating_creeper color gold
team modify orange_falling_creeper color dark_aqua
team modify orange_wind_charge_zombie color white
team modify orange_wind_charge_drowned color dark_red