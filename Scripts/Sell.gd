extends Node


func _ready():
	Globals.sold_count = 0
	Globals.remaining_cust = 0
	_load_background(true)
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	print("Musubis Cooked: " + Globals.num_cooked as String)
	for i in range(0, Globals.num_cooked):
		_load_sprite("Musubi", rng.randf_range(100, 1000), rng.randf_range(100, 500))
	print("Number of customers based on weather: " + Globals.curr_weather as String)
	for i in range(0, Globals.curr_weather):
		var custGender = rng.randf_range(0, 1)
		Globals.remaining_cust += 1
		if custGender <= .5:
			_load_sprite("Customer1", rng.randf_range(100, 1000), rng.randf_range(100, 500))
		else:
			_load_sprite("Customer2", rng.randf_range(100, 1000), rng.randf_range(100, 500))

func _process(delta):
	$SoldCount.text = Globals.sold_count as String
	if Globals.remaining_cust <= 0:
		_load_background(false)
		SceneLoader._load_scene("Results")

func _load_sprite(sprite, x, y):
	var newSprite = load("res://Sprites/" + sprite + ".tscn").instance()
	newSprite.position.x = x
	newSprite.position.y = y
	self.add_child(newSprite)
	return newSprite

func _load_background(visibility):
	self.get_node(Globals.curr_location).visible = visibility
