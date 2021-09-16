# xiharks-lbal-tweaks
Base game tweaks for Luck Be A Landlord

Install requires LuckyAPI found here: https://github.com/ValgoBoi/LuckyAPI

To install, copy the xiharks-lbal-tweaks.zip (note, the included zip file, not a zip of this entire repo) into the mods folder located at %appdata%\Godot\app_userdata\Luck be a Landlord\mods for Windows (or the appropriate install path for other operating systems).

# Version 1.0.2
- ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/b/bd/Cultist.png/revision/latest/scale-to-width-down/24?cb=20210821153153) Chance to convert reduced (6.25% -> 5%), will no longer attempt to convert adjacent humans on the same turn this symbol becomes a cultist

For modding compatibility, mod.gd now contains an array of symbols which will not be affected by the cultist. To add symbols from your mod to this group, add to this array, or run a similar patch over the human symbols you do not want affected.

# Version 1.0.1
- ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/0/05/Cat.png/revision/latest/scale-to-width-down/24?cb=20210224153616) now destroys urns (does not effect big urns)

# Version 1.0.0
Patched the following symbols:
- ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/0/05/Cat.png/revision/latest/scale-to-width-down/24?cb=20210224153616) now additionally eats goldfish and is buffed by moon
- ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/b/bd/Cultist.png/revision/latest/scale-to-width-down/24?cb=20210821153153) now has a 6.25% chance to transform nearby non-cultist humans (except ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/3/3d/Toddler.png/revision/latest/scale-to-width-down/24?cb=20210224153834), ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/1/1d/Bounty_Hunter.png/revision/latest/scale-to-width-down/24?cb=20210224153611), and ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/0/0d/General_Zaroff.png/revision/latest/scale-to-width-down/24?cb=20210224153638)) into cultist
- ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/1/17/Magpie.png/revision/latest/scale-to-width-down/24?cb=20210224153658) now destroys adjacent coin and shiny pebbles, 9g each
- ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/5/5c/Mouse.png/revision/latest/scale-to-width-down/24?cb=20210224153709) now buffed by moon
- ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/2/21/Ninja.png/revision/latest/scale-to-width-down/24?cb=20210224153711) new custom icon and is now buffed by moon
- ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/5/5c/Owl.png/revision/latest/scale-to-width-down/24?cb=20210224153714) now destroys mice and adds 9g
- ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/1/1d/Rain.png/revision/latest/scale-to-width-down/24?cb=20210224153721) now provides a buff to snails: "Adjacent snails always give coin."
- ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/e/e9/Turtle.png/revision/latest/scale-to-width-down/24?cb=20210224153837) new effect, whenever adjacent to at least 2 rabbits, permanently gives 1 more coin each time it gives coin.
- ![alt text](https://static.wikia.nocookie.net/luck-be-a-landlord/images/c/c8/Wolf.png/revision/latest/scale-to-width-down/24?cb=20210224153844) now destroys adjacent rabbits, permanently adding 1g for each rabbit destroyed

Overall, these changes will make the game feel easier. These tweaks added additional interactions between symbols, and as a result, coin is easier to earn.
Currently, there is no intent to add or remove any symbols to/from the base game. Further balancing to offset the lower difficulty is likely required.
