extends Node

func _ready():
	$Spam_1.text = Constants.SPAM_1_QTY as String + " for " + Constants.as_currency(Constants.SPAM_1_QTY * Constants.SPAM_1_PRICE)
	$Spam_2.text = Constants.SPAM_2_QTY as String + " for " + Constants.as_currency(Constants.SPAM_2_QTY * Constants.SPAM_2_PRICE)
	$Spam_3.text = Constants.SPAM_3_QTY as String + " for " + Constants.as_currency(Constants.SPAM_3_QTY * Constants.SPAM_3_PRICE)
	_update_label()

func _on_Spam_1_pressed():
	if (Constants.SPAM_1_PRICE * Constants.SPAM_1_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.SPAM_1_PRICE * Constants.SPAM_1_QTY
		Globals.curr_spam += Constants.SPAM_1_QTY
		_update_label()

func _on_Spam_2_pressed():
	if (Constants.SPAM_2_PRICE * Constants.SPAM_2_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.SPAM_2_PRICE * Constants.SPAM_2_QTY
		Globals.curr_spam += Constants.SPAM_2_QTY
		_update_label()
		
func _on_Spam_3_pressed():
	if (Constants.SPAM_3_PRICE * Constants.SPAM_3_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.SPAM_3_PRICE * Constants.SPAM_3_QTY
		Globals.curr_spam += Constants.SPAM_3_QTY
		_update_label()
		
func _update_label():
	$Spam_Label.text = "Cans of Spam: " + Globals.curr_spam as String
	$"../Money".text = Constants.as_currency(Globals.curr_money)
