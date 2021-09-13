extends "res://modloader/SymbolPatcher.gd"

var value_index: int

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "cultist"

func patch_description(description):
    #var targets = "<icon_robin_hood> <icon_thief> <icon_billionaire> <icon_dwarf> <icon_miner> <icon_hooligan> <icon_king_midas> <icon_witch> <icon_pirate> <icon_ninja> <icon_mrs_fruit> <icon_farmer> <icon_diver> <icon_dame> <icon_chef> <icon_card_shark> <icon_beastmaster> <icon_archaeologist> <icon_joker> <icon_bartender> and <icon_comedian>"
    #Not targets["cultist", "general_zaroff", "toddler", "bounty_hunter"]
    var targets = "humans except <all_and_noconvert>"
    return join(description, "Has a <color_E14A68><value_" + str(value_index + 1) + ">%<end> chance to transform adjacent " + targets + " into <icon_cultist>.")

func add_conditional_effects(symbol, adjacent):
    if symbol.times_displayed > 1:
        for i in adjacent:
            if i.groups.has("human") and not i.groups.has("noconvert"):
                randomize()
                if rand_range(0, 100) < symbol.values[value_index]:
                    symbol.add_effect_for_symbol(i, effect().change_type("cultist").animate("shake", 0, [symbol, i]))

func patch_values(values, value_index):
    self.value_index = value_index
    values.push_back(5)
    return values