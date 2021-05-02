#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Remove tags - players
tag @a remove MRL_SetUUID

## Remove tags - misile launcher - players
tag @a remove MRL_MisileShooter
## Remove tags - misile launcher - mobs
tag @e remove MRL_MisileTarget
tag @e remove MRL_LockonTarget
## Remove tags - misile launcher - firework rockets
tag @e remove MRL_IgnitingMisile
tag @e remove MRL_IgnitedMisile
tag @e remove MRL_Misile
## Remove tags - misile launcher - area effect clouds
tag @e remove MRL_DetectLockon
tag @e remove MRL_NotFoundTarget
tag @e remove MRL_IgnitingMisile
tag @e remove MRL_IgnitedMisile
tag @e remove MRL_MisileCloud

## Remove tags - misile launcher - players
tag @a remove MRL_RocketShooter
## Remove tags - misile launcher - firework rockets
tag @e remove MRL_IgnitingRocket
tag @e remove MRL_IgnitedRocket
tag @e remove MRL_DetectRocketExplode
## Remove tags - misile launcher - area effect clouds
tag @e remove MRL_DetectRocket
tag @e remove MRL_IgnitingRocket
tag @e remove MRL_IgnitedRocket

## Remove tags - summoning trader
tag @e remove MRL_SummonTraderArea
tag @e remove MRL_NotSetTarget
tag @e remove MRL_ArmsTrader
tag @e remove MRL_NotSetTarget