extends "res://modloader/SymbolPatcher.gd"

var value_index: int

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "wolf"

func patch_description(description):
    return "<color_E14A68>Destroys<end> adjacent <icon_rabbit>. Permanently gives <icon_coin><color_FBF236><value_" + str(value_index) + "><end> for each <icon_rabbit> <color_E14A68>destroyed<end>."
    
func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("rabbit").set_destroyed().animate("shake", 0, [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_type("rabbit").if_destroyed(true).set_target(symbol).add_permanent_bonus(symbol.values[0]))

func patch_values(values, size):
    values.push_back(1)
    return values