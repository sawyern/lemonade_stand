extends Node2D


func _ready():
	$StatusContainer/LocationContainer/LocationSelected.text = ""
	$StatusContainer/WeatherContainer/CurrentWeather.text = _rand_weather()
	$StatusContainer/EventContainer/CurrentEvent.text = Globals.curr_day as String

func _update_loc(loc):
	Globals.curr_location = loc
	$StatusContainer/LocationContainer/LocationSelected.text = Globals.curr_location
	SceneLoader._load_scene("Inventory")

func _rand_weather():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var num = rng.randf_range(0, 5)
	Globals.curr_weather = Constants.WEATHER.values()[num]
	return Constants.WEATHER.keys()[num].capitalize()


func _on_Downtown_pressed():
	_update_loc(Constants.LOC_1)

func _on_Waikiki_pressed():
	_update_loc(Constants.LOC_2)

func _on_Stadium_pressed():
	_update_loc(Constants.LOC_3)

func _on_University_pressed():
	_update_loc(Constants.LOC_4)
	
