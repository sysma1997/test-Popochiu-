tool
extends PopochiuHotspot
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked
func on_interact() -> void:
	E.run([
		C.walk_to_clicked(), 
		C.face_clicked(),
		"Player: This window is not one of those that open"
	])


# When the node is right clicked
func on_look() -> void:
#	Replace the call to .on_look() to implement your code. This only makes
#	the default behavior to happen.
#	For example you can make the character walk to the Hotspot and then say
#	something:
	E.run([
		C.face_clicked(),
		"Player: I really like the tree outside"
	])


# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	# Replace the call to .on_item_used(item) to implement your code. This only
	# makes the default behavior to happen.
	.on_item_used(item)
