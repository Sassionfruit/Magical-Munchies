extends Resource
class_name InvData

signal inventory_updated(inventory_data: InvData)
signal inventory_interact(inventory_data: InvData, index: int, button: int)

@export var slot_datas: Array[InvSlot]

func grab_slot_data(index: int) -> InvSlot:
    var slot_data = slot_datas[index]

    if slot_data:
        slot_datas[index] = null
        inventory_updated.emit(self)
        return slot_data
    else:
        return null 

func drop_slot_data(grabbed_slot_data: InvSlot, index: int) -> InvSlot:
    var slot_data = slot_datas[index]

    slot_datas[index] = grabbed_slot_data
    inventory_updated.emit(self)
    return slot_data


func pick_up_slot_data(slot_data: InvSlot)-> bool:
    for index in slot_datas.size():
        if not slot_datas[index]:
            slot_datas[index] = slot_data
            inventory_updated.emit(self)
            return true
    return false

func on_slot_clicked(index: int, button: int) -> void:
    inventory_interact.emit(self, index, button)
