FuchsiaHouse1Script:
	call EnableAutoTextBoxDrawing
	ret

FuchsiaHouse1TextPointers:
	dw FuchsiaHouse1Text1
	dw FuchsiaHouse1Text2

FuchsiaHouse1Text1:
	TX_FAR MoveReminderText1
	db "@"

FuchsiaHouse1Text2:
	TX_FAR MoveDeleterText1
	db "@"
