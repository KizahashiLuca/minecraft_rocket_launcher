#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Set UUID
execute if entity @p[tag=!MRL_SetUUID] run function mrl:system/load/set_uuid

## Launcher
execute if entity @p[predicate=mrl:after_shot/in_inventory] run function mrl:system/launcher/main
#### Rocket Launcher
execute as @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitedRocket] at @s run function mrl:system/launcher/rocket_launcher/main
#### Misile Launcher
execute if entity @p[predicate=mrl:before_shot/misile_launcher/in_hand] run function mrl:system/launcher/misile_launcher/find_target/main
execute if entity @p[tag=MRL_LockonTarget,predicate=!mrl:before_shot/misile_launcher/in_hand] run function mrl:system/launcher/misile_launcher/find_target/reset_target
execute as @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitedMisile] at @s run function mrl:system/launcher/misile_launcher/main

## Summon Arms Trader
scoreboard players set @a[scores={MRL_PlayMinute=24000..}] MRL_PlayMinute 0
execute at @p[predicate=mrl:summon_trader/condition] unless entity @e[type=minecraft:wandering_trader,tag=MRL_ArmsTrader] run function mrl:system/summon/arms_trader