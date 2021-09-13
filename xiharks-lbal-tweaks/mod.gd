extends Reference

const mod_name : String = "xiharks-lbal-tweaks"

func load(modloader: Reference, mod_info, tree: SceneTree):
    #Added Symbols
    #Modified Symbols
    modloader.add_symbol_patch("res://" + mod_name + "/patches/Cat.gd")
    modloader.add_symbol_patch("res://" + mod_name + "/patches/Cultist.gd")
    modloader.add_symbol_patch("res://" + mod_name + "/patches/Magpie.gd")
    modloader.add_symbol_patch("res://" + mod_name + "/patches/Mouse.gd")
    modloader.add_symbol_patch("res://" + mod_name + "/patches/Ninja.gd")
    modloader.add_symbol_patch("res://" + mod_name + "/patches/Owl.gd")
    modloader.add_symbol_patch("res://" + mod_name + "/patches/Rain.gd")
    modloader.add_symbol_patch("res://" + mod_name + "/patches/Turtle.gd")
    modloader.add_symbol_patch("res://" + mod_name + "/patches/Wolf.gd")
    #Removed Symbols

    #Patchers
    var noconvert = ["cultist", "general_zaroff", "toddler", "bounty_hunter"]
    for i in noconvert:
        modloader.add_symbol_patch("res://" + mod_name + "/patches/GroupPatcher.gd", {"id": i, "group": "noconvert"})

#func modify_starting_symbols(current):
#    return ["cultist", "cultist", "cultist", "cultist", "cultist", "hooligan", "hooligan", "hooligan", "hooligan", "hooligan", "hooligan", "hooligan", "hooligan", "hooligan", "hooligan"]
