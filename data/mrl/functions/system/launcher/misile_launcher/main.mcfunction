#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Add tags
tag @s add MRL_MisileCloud
execute as @e[type=minecraft:firework_rocket,tag=MRL_IgnitedMisile] if score @s MisileUUID0 = @e[tag=MRL_MisileCloud,limit=1] MisileUUID0 if score @s MisileUUID1 = @e[tag=MRL_MisileCloud,limit=1] MisileUUID1 if score @s MisileUUID2 = @e[tag=MRL_MisileCloud,limit=1] MisileUUID2 if score @s MisileUUID3 = @e[tag=MRL_MisileCloud,limit=1] MisileUUID3 run tag @s add MRL_Misile
execute as @e[type=!#mrl:not_mob] if score @s PlayerUUID0 = @e[tag=MRL_Misile,limit=1] TargetUUID0 if score @s PlayerUUID1 = @e[tag=MRL_Misile,limit=1] TargetUUID1 if score @s PlayerUUID2 = @e[tag=MRL_Misile,limit=1] TargetUUID2 if score @s PlayerUUID3 = @e[tag=MRL_Misile,limit=1] TargetUUID3 run tag @s add MRL_MisileTarget

## Tracking Target
execute as @e[tag=MRL_Misile,limit=1] run function mrl:system/launcher/misile_launcher/track_target

## Detect ignited firework_rocket
scoreboard players set @e[tag=MRL_MisileCloud,limit=1] NotExplosive 0

## If firework rocket is alive, it will not explode
execute if entity @e[type=minecraft:firework_rocket,tag=MRL_Misile] run scoreboard players set @e[tag=MRL_MisileCloud,limit=1] NotExplosive 1

## If there are blocks at the end of firework rocket, it will explode
execute as @e[type=minecraft:firework_rocket,tag=MRL_Misile] at @s unless block ^ ^ ^-1 #mrl:air run scoreboard players set @e[tag=MRL_MisileCloud,limit=1] NotExplosive 0
execute as @e[type=minecraft:firework_rocket,tag=MRL_Misile] at @s unless block ^ ^ ^1 #mrl:air run scoreboard players set @e[tag=MRL_MisileCloud,limit=1] NotExplosive 0

## If target player is near by, it will explode
execute as @e[type=minecraft:firework_rocket,tag=MRL_Misile] at @s if entity @e[tag=MRL_MisileTarget,sort=nearest,distance=..1.5] run scoreboard players set @e[tag=MRL_MisileCloud,limit=1] NotExplosive 0

## If shot player is near by, it will not explode
execute as @a if score @e[tag=MRL_MisileCloud,limit=1] PlayerUUID0 = @s PlayerUUID0 if score @e[tag=MRL_MisileCloud,limit=1] PlayerUUID1 = @s PlayerUUID1 if score @e[tag=MRL_MisileCloud,limit=1] PlayerUUID2 = @s PlayerUUID2 if score @e[tag=MRL_MisileCloud,limit=1] PlayerUUID3 = @s PlayerUUID3 run tag @s add MRL_MisileShooter
execute as @p[tag=MRL_MisileShooter,distance=..2] run scoreboard players set @e[tag=MRL_MisileCloud,limit=1] NotExplosive 1

## Explode
execute as @e[tag=MRL_MisileCloud,scores={NotExplosive=0},limit=1] at @s run function mrl:system/launcher/misile_launcher/explode

## Kill firework rocket
execute as @e[tag=MRL_MisileCloud,scores={NotExplosive=0},limit=1] run kill @e[tag=MRL_Misile]

## Teleport cloud
execute as @e[tag=MRL_MisileCloud,scores={NotExplosive=1},limit=1] at @e[tag=MRL_Misile,limit=1] run function mrl:system/launcher/misile_launcher/teleport_cloud

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MRL_MisileCloud]

## Remove a tag
tag @e[tag=MRL_Misile] remove MRL_Misile
tag @e[tag=MRL_MisileTarget] remove MRL_MisileTarget
tag @e[tag=MRL_MisileShooter] remove MRL_MisileShooter