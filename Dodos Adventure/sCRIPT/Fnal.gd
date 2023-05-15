extends Node2D

onready var anime=$Player/AnimatedSprite
onready var heart=$Heart
var speed=0
var start = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	start=true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if start==true:
		anime.play("Walk")
		$Player/AnimatedSprite.move_local_x(10,0)
		$Princess.move_local_x(-2,0)
		speed=speed+1
		if speed==255:
			heart.play("Heart")
			start=false
			
		
		
