extends HBoxContainer

func _ready():
	$RiceLabelContainer/RiceOwnedContainer/RiceOwned.text = Globals.curr_rice as String
