extends Sprite2D
var theNum = -1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	theNum = get_parent().getNum()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if theNum == -1:
		theNum = get_parent().getNum
		print("cannot find leaf num value. trying again")
	if theNum == 1:
		show()
	else:
		hide()
