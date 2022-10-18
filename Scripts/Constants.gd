extends Node

const START_MONEY = 100.00

const IVENTORY_SCENE = "Inventory"
const DIFFICULTY_SCENE = "Difficulty"
const MAP_SCENE = "Map"
const RECIPE_SCENE = "Recipe"
const RESULTS_SCENE = "Results"
const SELL_SCENE = "Sell"
const WELCOME_SCENE = "Welcome"

const SPAM_1_PRICE = 2.00
const SPAM_1_QTY = 1
const SPAM_2_PRICE = 1.75
const SPAM_2_QTY = 5
const SPAM_3_PRICE = 1.25
const SPAM_3_QTY = 10

const RICE_1_PRICE = 2.00
const RICE_1_QTY = 1
const RICE_2_PRICE = 1.75
const RICE_2_QTY = 5
const RICE_3_PRICE = 1.25
const RICE_3_QTY = 10

const NORI_1_PRICE = 2.00
const NORI_1_QTY = 1
const NORI_2_PRICE = 1.75
const NORI_2_QTY = 5
const NORI_3_PRICE = 1.25
const NORI_3_QTY = 10

const WRAP_1_PRICE = 2.00
const WRAP_1_QTY = 1
const WRAP_2_PRICE = 1.75
const WRAP_2_QTY = 5
const WRAP_3_PRICE = 1.25
const WRAP_3_QTY = 10

const DIFFICULTY_1 = 7
const DIFFICULTY_2 = 14
const DIFFICULTY_3 = 21

# Given number, format as curreny, return as String
# ie. 100.3 -> $100.30; 412.1111 -> $412.11
static func as_currency(number):
	var txt_numb = "%.2f" % number
	for idx in range(txt_numb.find(".") - 3, 0, -3):
		txt_numb = txt_numb.insert(idx, ",")
	return "$" + txt_numb as String

