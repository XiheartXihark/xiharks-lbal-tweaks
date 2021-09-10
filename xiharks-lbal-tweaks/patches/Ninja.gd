extends "res://modloader/SymbolPatcher.gd"

var value_index: int
var texture_path := null

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "ninja"
    self.texture_path = "res://xiharks-lbal-tweaks/patches/Ninja.png"

func patch_texture(texture):
    return load_texture(self.texture_path)

func patch_groups(groups):
    groups.push_back("night")
    return groups