extends "res://modloader/SymbolPatcher.gd"

var value_index: int

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = params.id
    self.group = params.group

func patch_groups(groups):
    groups.push_back(self.group)
    return groups