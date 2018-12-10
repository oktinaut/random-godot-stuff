extends Spatial

var Butterfly : PackedScene = preload("res://Prefabs/Butterfly.tscn")

func _ready():
	for i in range(20):
		var butterfly : Spatial = Butterfly.instance()
		
		var x = randf() * 3.0 - 1.5
		var y = randf() * 3.0 - 1.5
		var z = randf() * 3.0 - 1.5
		
		var rotation = randf() * 360.0;
		
		butterfly.rotate_x(rotation)
		butterfly.scale = Vector3(0.75, 0.75, 0.75)
		butterfly.translate(Vector3(x, y, z))
		
		add_child(butterfly)
