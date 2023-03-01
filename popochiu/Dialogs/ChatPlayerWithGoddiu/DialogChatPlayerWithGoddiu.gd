tool
extends PopochiuDialog


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
func on_start() -> void:
	# One can put here something to excecute before showing the dialog options.
	# E.g. Make the PC to look at the character which it will talk to, walk to
	# it, and say something (or make the character say something)
	# (!) It MUST always use a yield
	yield(E.run([
		"Player: Hey tu", 
		"Goddiu: ¿Que pasa perrito?"
	]), 'completed')


func option_selected(opt: PopochiuDialogOption) -> void:
	# You can make the player character say the selected option with:
	yield(D.say_selected(), 'completed')
	
	# Use match to check which option was selected and excecute something for
	# each one
	match opt.id:
		'Opt1':
			yield(E.run([
				"Goddiu: Un sobreviviente del cataclismo en Kepbet", 
				"Goddiu: ¿Y tu?",
				"Player: Un extraterrestre con una apariencia no muy amigable con una mision.",
				"Goddiu: Ps no me interesa la verdad, tengo mucha hambre.",
				"Player: :'v"
			]), 'completed')
		'Exit':
			# By default close the dialog. Options won't show after calling
			# stop()
			stop()
	
	_show_options()


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ PUBLIC ░░░░
# Use this to save custom data for this PopochiuDialog when saving the game.
# The Dictionary must contain only JSON supported types: bool, int, float, String.
func on_save() -> Dictionary:
	return {}


# Called when the game is loaded.
# This Dictionary should has the same structure you defined for the returned
# one in on_save().
func on_load(data: Dictionary) -> void:
	prints(data)
