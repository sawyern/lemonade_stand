extends HBoxContainer

func _ready():
	Globals.num_cooked = 0

func _on_CookMinus_pressed():
	if Globals.num_cooked > 0:
		Globals.num_cooked -= 1

func _on_CookPlus_pressed():
	if Globals.num_cooked < _get_max_musubi():
		Globals.num_cooked += 1
	
func _on_CookMinus10_pressed():
	if Globals.num_cooked > 0:
		Globals.num_cooked -= 10
	if Globals.num_cooked < 0:
		Globals.num_cooked = 0
	
func _on_CookPlus10_pressed():
	if Globals.num_cooked < _get_max_musubi():
		Globals.num_cooked += 10
	if Globals.num_cooked > _get_max_musubi():
		Globals.num_cooked = _get_max_musubi()
	
func _process(delta):
	$CookCount.text = min(Globals.num_cooked, _get_max_musubi()) as String

func _get_max_musubi():
	var spam = Globals.curr_spam * Globals.spam_slices_per_can
	var rice = Globals.curr_rice * Globals.rice_cup_per_musubi
	var nori = Globals.curr_nori * Globals.nori_per_sheet
	var wrap = Globals.curr_wrap * Globals.wrap_box_per_musubi
	return min(min(spam, rice), min(nori, wrap))
