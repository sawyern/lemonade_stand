extends HBoxContainer

func _ready():
	$NoriLabelContainer/NoriOwnedContainer/NoriOwned.text = Globals.curr_nori as String
	Globals.nori_per_sheet = Constants.DEFAULT_NORI_QTY
	$NoriCount.text = Globals.nori_per_sheet as String


func _on_NoriMinus_pressed():
	if Globals.nori_per_sheet > 1:
		Globals.nori_per_sheet -= 1
	_update_text()


func _on_NoriPlus_pressed():
	if Globals.nori_per_sheet < 12:
		Globals.nori_per_sheet += 1
	_update_text()
	

func _update_text():
	$NoriCount.text = Globals.nori_per_sheet as String
