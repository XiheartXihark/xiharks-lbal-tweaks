extends Reference

func load(modloader: Reference, mod_info, tree: SceneTree):
    #Added Symbols
    #Modified Symbols
    modloader.add_symbol_patch("res://xiharks-lbal-tweaks/patches/Cat.gd")
    modloader.add_symbol_patch("res://xiharks-lbal-tweaks/patches/Cultist.gd")
    modloader.add_symbol_patch("res://xiharks-lbal-tweaks/patches/Magpie.gd")
    modloader.add_symbol_patch("res://xiharks-lbal-tweaks/patches/Mouse.gd")
    modloader.add_symbol_patch("res://xiharks-lbal-tweaks/patches/Ninja.gd")
    modloader.add_symbol_patch("res://xiharks-lbal-tweaks/patches/Owl.gd")
    modloader.add_symbol_patch("res://xiharks-lbal-tweaks/patches/Rain.gd")
    modloader.add_symbol_patch("res://xiharks-lbal-tweaks/patches/Turtle.gd")
    modloader.add_symbol_patch("res://xiharks-lbal-tweaks/patches/Wolf.gd")
    #Removed Symbols

func modify_starting_symbols(current):
    return ["turtle", "turtle", "turtle", "turtle", "turtle", "rabbit", "rabbit", "rabbit", "rabbit", "rabbit"]