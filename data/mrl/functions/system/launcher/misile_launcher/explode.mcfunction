#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Explode
summon minecraft:tnt ~ ~ ~
scoreboard players set @p[tag=MRL_MisileShooter] PrvTargetUUID0 0
scoreboard players set @p[tag=MRL_MisileShooter] PrvTargetUUID1 0
scoreboard players set @p[tag=MRL_MisileShooter] PrvTargetUUID2 0
scoreboard players set @p[tag=MRL_MisileShooter] PrvTargetUUID3 0
scoreboard players set @p[tag=MRL_MisileShooter] TargetUUID0 1
scoreboard players set @p[tag=MRL_MisileShooter] TargetUUID1 1
scoreboard players set @p[tag=MRL_MisileShooter] TargetUUID2 1
scoreboard players set @p[tag=MRL_MisileShooter] TargetUUID3 1
scoreboard players set @p[tag=MRL_MisileShooter] TargetReset 1