#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 06 May 2021                           ##
##   Version   : β-1.0                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Change gamerules
gamerule maxCommandChainLength 65536

## Send Title Message
function mrl:system/unload/message
## Remove scoreboards
function mrl:system/unload/remove_scoreboard
## Remove entities
function mrl:system/unload/remove_entities
## Remove tags
function mrl:system/unload/remove_tags
