extends Node


func _ready():
	_restart()

func _restart():
	Globals.curr_day = 1
	Globals.curr_money = Constants.START_MONEY
	SceneLoader.main = self
	SceneLoader._load_scene("Welcome")
