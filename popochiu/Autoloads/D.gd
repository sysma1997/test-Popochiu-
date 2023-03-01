extends "res://addons/Popochiu/Engine/Interfaces/IDialog.gd"

# classes ----
const PDTestA := preload('res://popochiu/Dialogs/TestA/DialogTestA.gd')
const PDChatPlayerWithGoddiu := preload('res://popochiu/Dialogs/ChatPlayerWithGoddiu/DialogChatPlayerWithGoddiu.gd')
# ---- classes

# nodes ----
var TestA: PDTestA setget , get_TestA
var ChatPlayerWithGoddiu: PDChatPlayerWithGoddiu setget , get_ChatPlayerWithGoddiu
# ---- nodes

# functions ----
func get_TestA(): return E.get_dialog('TestA')
func get_ChatPlayerWithGoddiu(): return E.get_dialog('ChatPlayerWithGoddiu')
# ---- functions

