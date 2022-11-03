extends Node

func _ready():
	$WrapHbox/Wrap_1.text = Constants.WRAP_1_QTY as String + " for " + Constants.as_currency(Constants.WRAP_1_QTY * Constants.WRAP_1_PRICE)
	$WrapHbox/Wrap_2.text = Constants.WRAP_2_QTY as String + " for " + Constants.as_currency(Constants.WRAP_2_QTY * Constants.WRAP_2_PRICE)
	$WrapHbox/Wrap_3.text = Constants.WRAP_3_QTY as String + " for " + Constants.as_currency(Constants.WRAP_3_QTY * Constants.WRAP_3_PRICE)
	_update_label()

func _on_Wrap_1_pressed():
	if (Constants.WRAP_1_PRICE * Constants.WRAP_1_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.WRAP_1_PRICE * Constants.WRAP_1_QTY
		Globals.curr_wrap += Constants.WRAP_1_QTY
		_update_label()

func _on_Wrap_2_pressed():
	if (Constants.WRAP_2_PRICE * Constants.WRAP_2_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.WRAP_2_PRICE * Constants.WRAP_2_QTY
		Globals.curr_wrap += Constants.WRAP_2_QTY
		_update_label()
		
func _on_Wrap_3_pressed():
	if (Constants.WRAP_3_PRICE * Constants.WRAP_3_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.WRAP_3_PRICE * Constants.WRAP_3_QTY
		Globals.curr_wrap += Constants.WRAP_3_QTY
		_update_label()
		
func _update_label():
	$Wrap_Label.text = "Boxes of Wrap: " + Globals.curr_wrap as String
	$"../../../Money".text = Constants.as_currency(Globals.curr_money)
