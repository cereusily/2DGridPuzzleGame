extends Node2D

var game_end = false

func _process(_delta):
	if !(game_end):
		var goals = $Goals.get_child_count()
		for goal in $Goals.get_children():
			if goal.occupied:
				goals -= 1
		if goals == 0:
			$AcceptDialog.popup()
			game_end = true


func _on_AcceptDialog_confirmed():
	# Use this to change levels
	get_tree().change_scene("res://Levels/World2.tscn")
