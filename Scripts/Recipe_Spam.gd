extends HBoxContainer

func _ready():
	$SpamLabelContainer/SpamOwnedContainer/SpamOwned.text = Globals.curr_spam as String
	Globals.spam_slices_per_can = Constants.DEFAULT_SPAM_QTY
	$SpamCount.text = Globals.spam_slices_per_can as String


func _on_SpamMinus_pressed():
	if Globals.spam_slices_per_can > 1:
		Globals.spam_slices_per_can -= 1
	_update_text()


func _on_SpamPlus_pressed():
	if Globals.spam_slices_per_can < 12:
		Globals.spam_slices_per_can += 1
	_update_text()
	

func _update_text():
	$SpamCount.text = Globals.spam_slices_per_can as String
