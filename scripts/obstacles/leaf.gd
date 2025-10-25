extends Node2D
var fallSpeedIncreaseTimer = 0
var num  : int = randi_range(1, 2)
var rotationSpeed = randf_range(-5, 5)
var myScale = randf_range(0.6, 1.2)
var fallSpeed = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rotation_degrees = randi_range(-45, 45)
	var minFallSpeed : int = get_parent().getMinFallSpeed()
	var maxFallSpeed = get_parent().getMaxFallSpeed()
	fallSpeed = randi_range(minFallSpeed, maxFallSpeed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	scale.x = myScale
	scale.y = myScale
	rotation += rotationSpeed * delta
	position.y += fallSpeed * delta


func getNum() -> int:
	if num: #if we can find num
		return num
	else:# if we can not find num we return an error value (if this function returns -1 theres a problem)
		return -1
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()


	
