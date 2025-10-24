extends Sprite2D
var theNum = -1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	theNum = get_parent().getNum()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if theNum == -1:
		theNum = get_parent().getNum
		print("cannot find leaf num value. trying again. if this error presists check Leaf.gd, and ensure that this file belongs to a direct child of leaf.gd")
	if theNum == 1:
		show()
	else:
		hide()
