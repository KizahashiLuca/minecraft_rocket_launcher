#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Add a tag
tag @p[distance=..2] add MRL_DetectPlayer
tag @p[tag=MRL_DetectPlayer] add MRL_DetectedPlayer

## Detect player
execute if score @e[tag=MRL_MisileCloud,limit=1] MRL_PlayerUUID0 = @p[tag=MRL_DetectPlayer] MRL_PlayerUUID0 if score @e[tag=MRL_MisileCloud,limit=1] MRL_PlayerUUID1 = @p[tag=MRL_DetectPlayer] MRL_PlayerUUID1 if score @e[tag=MRL_MisileCloud,limit=1] MRL_PlayerUUID2 = @p[tag=MRL_DetectPlayer] MRL_PlayerUUID2 if score @e[tag=MRL_MisileCloud,limit=1] MRL_PlayerUUID3 = @p[tag=MRL_DetectPlayer] MRL_PlayerUUID3 run tag @p[tag=MRL_DetectPlayer] add MRL_ShotMisileLauncher

## Remove a tag
tag @a remove MRL_DetectPlayer

## Detect player Loop
execute if entity @p[tag=!MRL_DetectedPlayer,distance=..2] run function mrl:system/launcher/misile_launcher/detect_player

## Remove a tag
tag @a remove MRL_DetectedPlayer
