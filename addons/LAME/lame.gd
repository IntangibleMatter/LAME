tool
extends EditorPlugin

const LAMEEditor := preload("res://addons/LAME/LAMEEditor.tscn")

var lameEditorInstance : LameEditor

func _enter_tree():
	lameEditorInstance = LAMEEditor.instance()

	get_editor_interface().get_editor_viewport().add_child(lameEditorInstance)

	make_visible(false)


func _exit_tree():
	if lameEditorInstance:
		lameEditorInstance.queue_free()

func has_main_screen():
	return true


func make_visible(visible):
	if lameEditorInstance:
		lameEditorInstance.visible = visible


func get_plugin_name():
	return "LAME"

func handles(object: Object) -> bool:
	return object is LameMusic

func edit(object: Object) -> void:
	if not object is LameMusic:
		return
	

func get_plugin_icon():
	return get_editor_interface().get_base_control().get_icon("Node", "EditorIcons")