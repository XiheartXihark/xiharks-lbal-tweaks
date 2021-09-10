extends "res://modloader/SymbolPatcher.gd"

var value_index: int

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "owl"

func patch_description(description):
    return join(description, "<color_E14A68>Destroys<end> adjacent <icon_mouse>. Gives <icon_coin><color_FBF236><value_" + str(value_index + 1) + "><end> for each symbol <color_E14A68>destroyed<end>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("mouse").set_destroyed().animate("shake", 0, [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_type("mouse").if_destroyed(true).set_target(symbol).change_value_bonus(symbol.values[value_index]))

func patch_values(values, size):
    self.value_index = size
    values.push_back(9)
    return values