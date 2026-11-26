extends Control

var buttonclicked = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Button2.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label3.text = "Lives: " + str(Global.lives)
	if Global.lives <= 0:
		get_tree().change_scene_to_file("res://gameover.tscn")

func _on_label_8_mouse_entered() -> void:
	if buttonclicked == true:
		Global.lives -= 3


func _on_button_pressed() -> void:
	$Button2.visible = true
	buttonclicked = true
	$Label2.text = "Click the other side button\n Don't touch anything else!"


func _on_label_7_mouse_entered() -> void:
	if buttonclicked == true:
		Global.lives -= 3


func _on_label_4_mouse_entered() -> void:
	if buttonclicked == true:
		Global.lives -= 3


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://ninequestion.tscn")
