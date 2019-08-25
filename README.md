# Hook of Aardwolf
A MUSHclient plugins for the Aardwolf MUD made by BlueFeather, themed for o-}HooK{-o clan.

## Installation
Get the [`Hook_Plugin_Manager_v1.33.zip`][package_install] and unzip it in your MUSHclient root folder. It contains two files: zip.dll (MUSHclient/ folder) and Hook_Plugin_Manager.xml (MUSHclient/worlds/plugins/ folder). Add Hook_Plugin_Manager to your MUSHclient plugins, use ***"hpm help"*** alias to get the list of commands.

## Folders
* <a href="#hook-miniepics">Hook MiniEpics</a> (v0.7): a collection of triggers for use in Titan and Terra miniepics - to make life there easier
* <a href="#hook-shanty">Hook Shanty</a> (v1.7): contains a collection of sea shanties to make your puping sessions bearable - either by outputting to room channel (say) or to area channel (yell)
* <a href="#hook-spellup">Hook Spellup</a> (v1.3): tries to keep you spelled up while honoring different states (afk, sleeping, resting, combat)
* <a href="Links/LINKS.md">Links</a>: a collection of various, potentially useful, links to aard resources
* <a href="pkg/">pkg</a>: package folder, this is where the plugin manager downloads updates from

## Files
* **Hook_Plugin_Manager.xml**: this file is used when plugin manager checks if it needs to self-update
* **hpm.xml**: this file contains references to the plugins it manages
* **util_win.ps1**: a small utility for windows powershell that helps with file packing (for use in $profile)

*****
*****
*****

## Hook MiniEpics
A collection of triggers for use in Titan and Terra miniepics - to make life there easier.

For a summary of the most recent changes, please see [`MiniEpics CHANGELOG`][changelog_miniepics].

*****

## Hook Shanty
For convinience sake, it is possible to type "shan", "shant", "shany" - it will be resolved to "shanty".

For a summary of the most recent changes, please see [`Shanty CHANGELOG`][changelog_shanty].

    shanty        - sing one random shanty
    shanty loud   - yell one random shanty
    shanty louder - yell one random shanty IN ALL CAPS
    autoshanty    - same as shanty, can be switched ON/OFF by sing
    sing          - switch for autoshanty                 NOW: [ON]
    shanty help   - this screen

**Usage:** Make a quaff (hp or mana) alias, have it Send to: Execute and just add autoshanty in separate line. Alias sing can be used to easily turn on and off the singing - without the need to edit the alias.

*****

## Hook Spellup
Using the "ss" command will reset the state of the spellup plugin and recast all of the missing spells (which can be caused by going linkdead, for example).

For a summary of the most recent changes, please see [`Spellup CHANGELOG`][changelog_spellup].

    ss             - alias for manual spellup
    ss auto        - toggle auto spellup.           Now: [ ON ]
    ss sanc        - toggle auto aura switching.    Now: [ ON ]
    ss warn        - toggle auto warnings. (pvp)    Now: [ ON ]
    ss debug       - toggle debug info.             Now: [ OFF ]
    ss help        - this screen
    ss sanc reset  - manually reset sanctuary aura if needed
    ss warn <chan> - set output to channel          Now: gt
    ss aura1 <num> - set non sanc aura id to <num>
    ss aura2 <num> - set sanctuary aura id to <num>
    ss bag1 <num>  - set bag for non sanc aura id to <num>
    ss bag2 <num>  - set bag for sanctuary aura id to <num>

**Usage:** Set your aura1, aura2 and the containers you keep them in to their ID numbers. It will automatically trigger if in combat and keep you safe!
To not use bag1 or bag2, set it to zero: "ss bag1 0"

<!-- links -->

  [changelog_miniepics]: https://github.com/aardbluefeather/hook/blob/master/Hook_MiniEpics/CHANGELOG.md
  [changelog_shanty]: https://github.com/aardbluefeather/hook/blob/master/Hook_Shanty/CHANGELOG.md
  [changelog_spellup]: https://github.com/aardbluefeather/hook/blob/master/Hook_Spellup/CHANGELOG.md
  [package_install]: https://github.com/aardbluefeather/hook/raw/master/pkg/Hook_Plugin_Manager_v1.33.zip
