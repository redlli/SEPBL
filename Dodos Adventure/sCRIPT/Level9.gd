extends LineEdit


var a="o"
var position
var moveSpeed =4
onready var animation=$Player/AnimatedSprite
onready var RAudio=$RSound
onready var WSound=$WSound2
var fine= false
# Called when the node enters the scene tree for the first time.
func _ready():
	grab_focus()
func _physics_process(_delta):
	if fine==true:
		$Player.move_local_x(1,0)

func _on_LineEdit_text_entered(new_text):
	if new_text==a:
		RAudio.play()
		get_parent().get_node("Door").queue_free()
		animation.play("Walk")
		fine=true	
		
		yield(get_tree().create_timer(4),"timeout")
		get_tree().change_scene("res://Levels/Final.tscn")
	else:
		WSound.play()
		yield(get_tree().create_timer(0.09),"timeout")
		get_tree().change_scene("res://Levels/Replay.tscn")
