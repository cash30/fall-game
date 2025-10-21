extends Marker2D
@export var leaf: PackedScene
const timeBetween = 0.5
var timer = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var timer = timeBetween
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	tickshoot(delta)
	pass

func shoot() -> void:
	var offset = randi_range(-300, 300)
	var leafInst = leaf.instantiate()
	leafInst.position.x = offset
	add_child(leafInst)
	
func tickshoot(delta) -> void:
	timer -= 1.0 * delta
	if timer <= 0:
		shoot()
		timer = timeBetween
		
