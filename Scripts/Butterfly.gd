extends Spatial

var time = 0
var mesh : Spatial
var speed = randf() * 1.5

func _ready():
	mesh = $MeshInstance

func _process(delta):
	time += delta * speed
	mesh.transform.origin = Vector3(sin(time) * 0.25, 0.0, cos(time))
