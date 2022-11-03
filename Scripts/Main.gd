extends Node


func _ready():
	_restart()

func _restart():
	Globals.curr_day = 1
	Globals.curr_money = Constants.START_MONEY
	Globals.curr_spam = 0
	Globals.curr_rice = 0
	Globals.curr_nori = 0
	Globals.curr_wrap = 0

	SoundManager.main = self
	SceneLoader.main = self
	SceneLoader._load_scene("Welcome")
	SoundManager._start_bgm()

