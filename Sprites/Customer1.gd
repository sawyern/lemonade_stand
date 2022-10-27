extends KinematicBody2D

var speed = 100
var velocity = Vector2()
var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	velocity.x = rng.randf_range(-1, 1)
	velocity.y = rng.randf_range(-1, 1)

func _physics_process(delta):
	velocity = velocity.normalized() * speed
	var collision = move_and_collide(velocity * delta)
	if collision:
		_on_collision(collision)
	_remove_if_offscreen()
	
func _on_collision(collision):
	velocity = velocity.bounce(collision.normal)
	
	if collision.collider.has_method("_hit"):
		collision.collider._hit()
		_check_sold()

		
func _check_sold():
	var is_sold = true
	
	if Globals.spam_slices_per_can > 7:
		if rng.randf_range(0, 1) < 0.1:
			$NotEnoughSpam.visible = true
			is_sold = false
	if Globals.nori_per_sheet < 4:
		if rng.randf_range(0, 1) < 0.1:
			$NotEnoughNori.visible = true
			is_sold = false
	if is_sold:
		Globals.sold_count += 1

func _remove_if_offscreen():
	if position.x > 1024 || position.x < 0 || position. y < 0 || position.y > 600:
		Globals.remaining_cust -= 1
		get_parent().remove_child(self)
