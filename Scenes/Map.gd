extends Node2D


func ready():
	$LocationContainer/LocationSelected.text = ""


func _on_Sell_pressed():
	if $LocationContainer/LocationSelected.text != "":
		SceneLoader._load_scene("Sell")

func _on_Downtown_pressed():
	_update_loc(Constants.LOC_1)
	
		

func _update_loc(loc):
	Globals.curr_location = loc
	$LocationContainer/LocationSelected.text = Globals.curr_location
