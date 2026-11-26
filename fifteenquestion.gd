extends Control
@onready var themed_timer: Node2D = $Themedtimer
var canclickbutton = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label4.visible = false
	if Global.skip == false:
		$Button5.visible = false
	await themed_timer.Timer(0.5)
	$Button.text = "HERE"
	$Button2.text = "NO"
	$Button3.text = "NO"
	$Button4.text = "NO"
	await themed_timer.Timer(0.2)
	$Button.text = " "
	$Button2.text = " "
	$Button3.text = " "
	$Button4.text = " "
	canclickbutton = true
	$Label2.text = "Now choose!"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label3.text = "Lives: " + str(Global.lives)
	if Global.lives == 0:
		get_tree().change_scene_to_file("res://gameover.tscn")


func _on_button_pressed() -> void: # correct
	if canclickbutton == false:
		Global.lives -= 1
		$Label4.visible = true
		return
	get_tree().change_scene_to_file("res://sixteenquestion.tscn")


func _on_button_5_pressed() -> void:
	Global.skip = false
	get_tree().change_scene_to_file("res://sixteenquestion.tscn")


func _on_button_2_pressed() -> void:
	Global.lives -= 1
	$Label4.visible = true


func _on_button_3_pressed() -> void:
	Global.lives -= 1
	$Label4.visible = true


func _on_button_4_pressed() -> void:
	Global.lives -= 1
	$Label4.visible = true
