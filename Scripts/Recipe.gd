extends Node2D



func _on_MapButton_pressed():
	Globals.curr_spam -= ceil(Globals.num_cooked as float / Globals.spam_slices_per_can)
	Globals.curr_rice -= ceil(Globals.num_cooked as float / Globals.rice_cup_per_musubi)
	Globals.curr_nori -= ceil(Globals.num_cooked as float / Globals.nori_per_sheet)
	Globals.curr_wrap -= ceil(Globals.num_cooked as float / Globals.wrap_box_per_musubi)
	SceneLoader._load_scene("Sell")
	



func _on_BackButton_pressed():
	SceneLoader._load_scene("Inventory")
