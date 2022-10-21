extends HBoxContainer

func _ready():
	$WrapLabelContainer/WrapOwnedContainer/WrapOwned.text = Globals.curr_wrap as String
