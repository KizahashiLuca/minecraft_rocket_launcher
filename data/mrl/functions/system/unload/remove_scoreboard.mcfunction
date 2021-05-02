#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Remove scoreboards
scoreboard objectives remove MRL_OnLoad
## Remove scoreboards for position
scoreboard objectives remove MRL_PosX
scoreboard objectives remove MRL_PosY
scoreboard objectives remove MRL_PosZ
## Remove scoreboards for calculation
scoreboard objectives remove MRL_1000
## Remove scoreboards for launcher common
scoreboard objectives remove MRL_PlayerUUID0
scoreboard objectives remove MRL_PlayerUUID1
scoreboard objectives remove MRL_PlayerUUID2
scoreboard objectives remove MRL_PlayerUUID3
scoreboard objectives remove MRL_NotExplosive
## Remove scoreboards for rocket launcher
scoreboard objectives remove MRL_RocketUUID0
scoreboard objectives remove MRL_RocketUUID1
scoreboard objectives remove MRL_RocketUUID2
scoreboard objectives remove MRL_RocketUUID3
## Remove scoreboards for misile launcher
scoreboard objectives remove MRL_MisileUUID0
scoreboard objectives remove MRL_MisileUUID1
scoreboard objectives remove MRL_MisileUUID2
scoreboard objectives remove MRL_MisileUUID3
scoreboard objectives remove MRL_TargetUUID0
scoreboard objectives remove MRL_TargetUUID1
scoreboard objectives remove MRL_TargetUUID2
scoreboard objectives remove MRL_TargetUUID3
scoreboard objectives remove MRL_PrvTgtUUID0
scoreboard objectives remove MRL_PrvTgtUUID1
scoreboard objectives remove MRL_PrvTgtUUID2
scoreboard objectives remove MRL_PrvTgtUUID3
scoreboard objectives remove MRL_TargetReset
scoreboard objectives remove MRL_TargetChange
scoreboard objectives remove MRL_DiffX
scoreboard objectives remove MRL_DiffY
scoreboard objectives remove MRL_DiffZ
scoreboard objectives remove MRL_PowDiffX
scoreboard objectives remove MRL_PowDiffY
scoreboard objectives remove MRL_PowDiffZ
scoreboard objectives remove MRL_NormXYZ
scoreboard objectives remove MRL_SqrtXYZ
scoreboard objectives remove MRL_SqrtVarI
scoreboard objectives remove MRL_SqrtVarX
## Remove scoreboards for summoning trader
scoreboard objectives remove MRL_PlayMinute

## Remove objectives
scoreboard players reset #mrl
scoreboard players reset @e
scoreboard players reset @a