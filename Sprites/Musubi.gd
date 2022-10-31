extends KinematicBody2D

var speed = 400
var velocity = Vector2()
const GRAVITY = 200
var direction = Vector2()

func _ready():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	velocity.x = rng.randf_range(50, 200)

func _physics_process(delta):
	velocity = speed * delta * direction
	velocity = move_and_slide(velocity)
	rotate(-.01)


func _hit():
	get_parent().remove_child(self)
