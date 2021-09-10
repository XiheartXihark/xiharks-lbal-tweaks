extends "res://modloader/SymbolPatcher.gd"

var value_index: int
var item_types

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "rain"

func patch_description(description):
    return join(description, "Adjacent <icon_snail> always give <icon_coin>.")

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        if i.type == "snail":
            symbol.add_effect_for_symbol(i, effect().change_value_bonus(i.values[0], "coin", true).animate("bounce", 0, [symbol, i]))