extends Node


func _on_Difficulty1_pressed():
	_set_difficulty(Constants.DIFFICULTY_1)

func _on_Difficulty2_pressed():
	_set_difficulty(Constants.DIFFICULTY_2)
	
func _on_Difficulty3_pressed():
	_set_difficulty(Constants.DIFFICULTY_3)
	
func _set_difficulty(diff):
	Globals.total_days = diff
	print("Total Days set to " + diff as String)
	SceneLoader._load_scene("Inventory")
