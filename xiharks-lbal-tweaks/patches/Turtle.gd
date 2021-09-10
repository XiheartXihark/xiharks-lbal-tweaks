extends "res://modloader/SymbolPatcher.gd"

var value_index: int

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "turtle"

func patch_description(description):
    return join(description, "Permanently gives <icon_coin><color_FBF236>1<end> every <color_E14A68>3<end> spins if adjacent to at least <color_E14A68><values_value_index><end> <icon_rabbit>.")

func add_conditional_effects(symbol, adjacent):
    var rabbitcount = 0
    for i in adjacent:
        if i.type == "rabbit":
            rabbitcount += 1
    if rabbitcount >= symbol.values[value_index]:
        symbol.set_persistent_data("slow_bonus", symbol.get_persistent_data("slow_bonus") + 1)

    var speed = 3
    if symbol.get_persistent_data("last_times_displayed") > symbol.times_displayed and (symbol.get_persistent_data("last_times_displayed") == 2):
        speed = 2

    if symbol.times_displayed == speed:
        symbol.add_effect(effect().change_value_bonus(symbol.get_persistent_data("slow_bonus")))

    symbol.set_persistent_data("last_times_displayed", symbol.times_displayed)

func patch_values(values, size):
    value_index = size
    values.push_back(2)
    return values

func update_value_text(symbol, values):
    symbol.bonus_text = str(symbol.get_persistent_data("slow_bonus"))