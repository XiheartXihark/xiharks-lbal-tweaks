extends "res://modloader/SymbolPatcher.gd"

var value_index: int

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "magpie"

func patch_description(description):
    return join(description, "<color_E14A68>Destroys<end> adjacent <icon_coin> and <icon_shiny_pebble>. Gives <icon_coin><color_FBF236><value_1><end> for each symbol <color_E14A68>destroyed<end>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("coin").set_destroyed().animate("shake", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_type("coin").if_destroyed(true).set_target(symbol).change_value_bonus(symbol.values[1]))
        symbol.add_effect_for_symbol(i, effect().if_type("shiny_pebble").set_destroyed().animate("shake", [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_type("shiny_pebble").if_destroyed(true).set_target(symbol).change_value_bonus(symbol.values[0]))