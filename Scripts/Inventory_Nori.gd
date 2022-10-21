extends Node

func _ready():
	$NoriHbox/Nori_1.text = Constants.NORI_1_QTY as String + " for " + Constants.as_currency(Constants.NORI_1_QTY * Constants.NORI_1_PRICE)
	$NoriHbox/Nori_2.text = Constants.NORI_2_QTY as String + " for " + Constants.as_currency(Constants.NORI_2_QTY * Constants.NORI_2_PRICE)
	$NoriHbox/Nori_3.text = Constants.NORI_3_QTY as String + " for " + Constants.as_currency(Constants.NORI_3_QTY * Constants.NORI_3_PRICE)
	_update_label()

func _on_Nori_1_pressed():
	if (Constants.NORI_1_PRICE * Constants.NORI_1_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.NORI_1_PRICE * Constants.NORI_1_QTY
		Globals.curr_nori += Constants.NORI_1_QTY
		_update_label()

func _on_Nori_2_pressed():
	if (Constants.NORI_2_PRICE * Constants.NORI_2_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.NORI_2_PRICE * Constants.NORI_2_QTY
		Globals.curr_nori += Constants.NORI_2_QTY
		_update_label()
		
func _on_Nori_3_pressed():
	if (Constants.NORI_3_PRICE * Constants.NORI_3_QTY <= Globals.curr_money):
		Globals.curr_money -= Constants.NORI_3_PRICE * Constants.NORI_3_QTY
		Globals.curr_nori += Constants.NORI_3_QTY
		_update_label()
		
func _update_label():
	$Nori_Label.text = "Bags of Nori: " + Globals.curr_nori as String
	$"../../../Money".text = Constants.as_currency(Globals.curr_money)
