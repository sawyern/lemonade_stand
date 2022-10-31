extends Node

func _ready():
	$SpamHbox/Rice_1.text = Constants.RICE_1_QTY as String + " for " + Constants.as_currency(Constants.RICE_1_QTY * Constants.RICE_1_PRICE)
	$SpamHbox/Rice_2.text = Constants.RICE_2_QTY as String + " for " + Constants.as_currency(Constants.RICE_2_QTY * Constants.RICE_2_PRICE)
	$SpamHbox/Rice_3.text = Constants.RICE_3_QTY as String + " for " + Constants.as_currency(Constants.RICE_3_QTY * Constants.RICE_3_PRICE)
	_update_label()

func _on_Rice_1_pressed():
	if (Constants.RICE_1_PRICE * Constants.RICE_1_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.RICE_1_PRICE * Constants.RICE_1_QTY
		Globals.curr_rice += Constants.RICE_1_QTY
		_update_label()

func _on_Rice_2_pressed():
	if (Constants.RICE_2_PRICE * Constants.RICE_2_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.RICE_2_PRICE * Constants.RICE_2_QTY
		Globals.curr_rice += Constants.RICE_2_QTY
		_update_label()
		
func _on_Rice_3_pressed():
	if (Constants.RICE_3_PRICE * Constants.RICE_3_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.RICE_3_PRICE * Constants.RICE_3_QTY
		Globals.curr_rice += Constants.RICE_3_QTY
		_update_label()
		
func _update_label():
	$Rice_Label.text = "Cups of Rice: " + Globals.curr_rice as String
	$"../../../Money".text = Constants.as_currency(Globals.curr_money)
