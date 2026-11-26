extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label4.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label3.text = "Lives: " + str(Global.lives)
	if Global.lives == 0:
		get_tree().change_scene_to_file("res://gameover.tscn")


func _on_button_4_pressed() -> void: # correct
	get_tree().change_scene_to_file("res://sevenquestion.tscn")

func _on_button_pressed() -> void:
	Global.lives -= 1
	$Label4.visible = true

func _on_button_2_pressed() -> void:
	Global.lives -= 1
	$Label4.visible = true

func _on_button_3_pressed() -> void:
	Global.lives -= 1
	$Label4.visible = true
