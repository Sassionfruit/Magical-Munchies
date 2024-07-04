# extends Control

# @onready var inv: Inv = preload("res://InventoryItems/PlayerInventory.tres")
# @onready var itemStackGuiClass = preload("res://Scenes/ItemStackGui.tscn") 
# @onready var slots: Array = $NinePatchRect/GridContainer.get_children()


# var is_open = false


# func _ready():
# 	connectSlots()
# 	inv.update.connect(update_slots)
# 	update_slots()
# 	close()


# func connectSlots():
# 	for i in range(slots.size()):
# 		var slot = slots[i]
# 		slot.index = i


# func update_slots():
# 	for i in range(min(inv.Slots.size(), slots.size())):
# 		var inventorySlot: InvSlot = inv.Slots[i]

# 		if !inventorySlot.item: continue

# 		var itemStackGui: ItemStackGui = slots[i].itemStackGui
# 		if !itemStackGui:
# 			itemStackGui = itemStackGuiClass.instantiate()
# 			slots[i].insert(itemStackGui)

# 		itemStackGui.inventorySlot = inventorySlot
# 		itemStackGui.update()


# func _process(delta):
# 	if Input.is_action_just_pressed("e"):
# 		if is_open:
# 			close()
# 		else:
# 			open()

# func open():
# 	visible = true 
# 	is_open = true 

# func close():
# 	visible = false
# 	is_open = false


