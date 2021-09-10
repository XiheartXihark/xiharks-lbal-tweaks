extends "res://modloader/SymbolPatcher.gd"

var value_index: int

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "cat"

func patch_description(description):
    return "<color_E14A68>Destroys<end> adjacent <icon_milk> <icon_goldfish> and <icon_urn>. Gives <icon_coin><color_FBF236><value_1><end> for each <icon_milk> and <icon_goldfish> <color_E14A68>destroyed<end>."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("goldfish").set_destroyed().animate("shake", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_type("goldfish").if_destroyed(true).set_target(symbol).change_value_bonus(symbol.values[0]))

func patch_groups(groups):
    groups.push_back("night")
    return groups