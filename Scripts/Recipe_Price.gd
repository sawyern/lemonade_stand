extends HBoxContainer



func _on_CookMinus1_pressed():
	if Globals.curr_musubi_price > 1:
		Globals.curr_musubi_price -= 1
		
func _on_CookMinus10_pressed():
	if Globals.curr_musubi_price > .1:
		Globals.curr_musubi_price -= .1

func _on_CookPlus10_pressed():
	Globals.curr_musubi_price += .1

func _on_CookPlus1_pressed():
	Globals.curr_musubi_price += 1

func _process(delta):
	$CookCount.text = Constants.as_currency(Globals.curr_musubi_price)
