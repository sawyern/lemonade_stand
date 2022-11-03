extends Node2D

func _ready():
	SoundManager._stop_bgm()
	var day = "Current Day: " + Globals.curr_day as String
	var capital = "Starting Money: " + Constants.as_currency(Globals.curr_money) as String
	
	var musubi_sold = "Total Sold: " +\
		Globals.sold_count as String + " Musubi(s)" +\
		" * " +\
		Constants.as_currency(Globals.curr_musubi_price) +\
		" = " +\
		Constants.as_currency((Globals.curr_musubi_price * Globals.sold_count))
	
	var new_capital = "New Total: " +\
		Constants.as_currency((Globals.curr_money + (Globals.curr_musubi_price * Globals.sold_count)))
	
	$ResultsText.text = PoolStringArray([day, capital, musubi_sold, new_capital]).join("\n")
	
	if Globals.curr_day == Globals.total_days:
		$Button.text = "Game Over"

func _on_Button_pressed():
	SoundManager._start_bgm()
	if Globals.curr_day == Globals.total_days:
		SceneLoader._load_scene("Main")
		return
	
	Globals.curr_day += 1
	Globals.curr_money += Globals.curr_musubi_price * Globals.sold_count
	Globals.sold_count = 0
	SceneLoader._load_scene("Map")
