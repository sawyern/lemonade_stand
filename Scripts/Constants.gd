extends Node

const START_MONEY = 100.00

#MAP NAMES
const LOC_1 = "Downtown"
const LOC_2 = "Waikiki Beach"
const LOC_3 = "Stadium"
const LOC_4 = "University"

#SCENE NAMES
const IVENTORY_SCENE = "Inventory"
const DIFFICULTY_SCENE = "Difficulty"
const MAP_SCENE = "Map"
const RECIPE_SCENE = "Recipe"
const RESULTS_SCENE = "Results"
const SELL_SCENE = "Sell"
const WELCOME_SCENE = "Welcome"

const DEFAULT_SPAM_QTY = 6
const DEFAULT_NORI_QTY = 4

#ITEM COSTS
const SPAM_1_PRICE = 3
const SPAM_1_QTY = 1
const SPAM_2_PRICE = 2.85
const SPAM_2_QTY = 5
const SPAM_3_PRICE = 2.70
const SPAM_3_QTY = 10

const RICE_1_PRICE = .7
const RICE_1_QTY = 1
const RICE_2_PRICE = .5
const RICE_2_QTY = 5
const RICE_3_PRICE = .3
const RICE_3_QTY = 10

const NORI_1_PRICE = .3
const NORI_1_QTY = 1
const NORI_2_PRICE = .25
const NORI_2_QTY = 5
const NORI_3_PRICE = .23
const NORI_3_QTY = 10

const WRAP_1_PRICE = 2
const WRAP_1_QTY = 1
const WRAP_2_PRICE = 1.75
const WRAP_2_QTY = 5
const WRAP_3_PRICE = 1.50
const WRAP_3_QTY = 10

#DIFFICULTY VALUES - NUM OF DAYS IN SESSION
const DIFFICULTY_1 = 7
const DIFFICULTY_2 = 14
const DIFFICULTY_3 = 21

#WEATHER TYPES
const WEATHER_SUNNY = "Sunny Partly Cloudy"
const WEATHER_LIGHT_RAIN = "Light Rain"
const WEATHER_OVERCAST = "Overcast"
const WEATHER_HURRICANE = "Hurricane"
const WEATHER_HOT_HUMID = "Hot and Humid"

enum WEATHER {
	SUNNY_PARTLY_CLOUDY = 40,
	BRIGHT_AND_WARM_STRONG_TRADE_WINDS = 35,
	OVERCAST = 30,
	GREY_NO_RAIN = 25,
	SUNNY_LIGHT_RAIN = 20,
	HOT_AND_HUMID = 15,
	HURRICANE = 5
}

# Given number, format as curreny, return as String
# ie. 100.3 -> $100.30; 412.1111 -> $412.11
static func as_currency(number):
	var txt_numb = "%.2f" % number
	for idx in range(txt_numb.find(".") - 3, 0, -3):
		txt_numb = txt_numb.insert(idx, ",")
	return "$" + txt_numb as String

