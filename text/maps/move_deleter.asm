_MoveDeleterGreetingText::
	text "Umm..."

	para "Oh, yes, I'm the"
	line "MOVE DELETER."

	para "I can make"
	line "#MON forget"
	cont "moves."

	para "Shall I make a"
	line "#MON forget?"
	done

_MoveDeleterSaidYesText::
	text "Which #MON?"
	prompt

_MoveDeleterWhichMoveText::
	text "Which move should"
	line "it forget, then?"
	done

_MoveDeleterConfirmText::
	text "Make it forget"
	line "@"
	TX_RAM wcf4b
	text "?"
	done

_MoveDeleterForgotText::
	text "@"
	TX_RAM wcf4b
	text " was"
	line "forgotten!@@"

_MoveDeleterByeText::
	text "Come visit me"
	line "again sometime."
	done

_MoveDeleterOneMoveText::
	text "That #MON"
	line "knows only one"
	cont "move!"

	para "I can't delete"
	line "it's only move!"
	prompt
