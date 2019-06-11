# Change Log
All notable changes to this plugin will be documented in this file.

## v1.3 - 2019-06-10
- will keep you spelled up while AFK (doing the same as with sleep/rest)
- will try to re-spellup after writing note
- fixed a bug with resting / sleeping not triggering properly

## v1.2 - 2019-06-06
- BUGFIX: on losing haste, will call for spellup now - so it doesn't matter if you use accelerate or haste
- BUGFIX: added trigger lines for fly, nightvision and pass door as they were missing
- added debug option, to be able to monitor when spellups get triggered
- added PvP warnings for scry, web, curse and revenge
- added keep_evaluating="n" to triggers: because of the way this script grows, interference with triggers from other scripts is possible - now it gets easy to switch the state to "y" for such triggers (PvP section for example)