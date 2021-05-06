#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 06 May 2021                           ##
##   Version   : β-1.0                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Remove entities - misile launcher - mobs
kill @e[type=!#mrl:not_mob,tag=MRL_MisileTarget]
kill @e[type=!#mrl:not_mob,tag=MRL_LockonTarget]
## Remove entities - misile launcher - firework rockets
kill @e[type=minecraft:firework_rocket,tag=MRL_IgnitingMisile]
kill @e[type=minecraft:firework_rocket,tag=MRL_IgnitedMisile]
kill @e[type=minecraft:firework_rocket,tag=MRL_Misile]
## Remove entities - misile launcher - area effect clouds
kill @e[type=minecraft:area_effect_cloud,tag=MRL_DetectLockon]
kill @e[type=minecraft:area_effect_cloud,tag=MRL_NotFoundTarget]
kill @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile]
kill @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitedMisile]
kill @e[type=minecraft:area_effect_cloud,tag=MRL_MisileCloud]

## Remove entities - misile launcher - firework rockets
kill @e[type=minecraft:firework_rocket,tag=MRL_IgnitingRocket]
kill @e[type=minecraft:firework_rocket,tag=MRL_IgnitedRocket]
kill @e[type=minecraft:firework_rocket,tag=MRL_DetectRocketExplode]
## Remove entities - misile launcher - area effect clouds
kill @e[type=minecraft:area_effect_cloud,tag=MRL_DetectRocket]
kill @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket]
kill @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitedRocket]

## Remove entities - summoning trader
kill @e[type=minecraft:area_effect_cloud,tag=MRL_SummonTraderArea]
kill @e[type=minecraft:wandering_trader,tag=MRL_ArmsTrader]
kill @e[type=minecraft:mule,tag=MRL_NotSetTarget]