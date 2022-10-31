extends Node2D



func _on_Button_pressed():
	Globals.curr_day += 1
	Globals.curr_money += Globals.curr_musubi_price * Globals.sold_count
	Globals.sold_count = 0
	SceneLoader._load_scene("Map")
