extends Node2D


func _on_RecipeButton_pressed():
	SceneLoader._load_scene("Recipe")


func _on_RecipeButton2_pressed():
	SceneLoader._load_scene("Help")
