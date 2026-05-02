layerID = layer_get_id("dialog_layer")
textID  = layer_text_get_id(layerID, "textoutput")

layer_set_visible(layerID, true)

index = 0
full_text = dialogue[index]
text_length = 0
is_typing = true

layer_text_text(textID, "")
isDialog = true