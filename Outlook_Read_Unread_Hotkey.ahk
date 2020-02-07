#NoTrayIcon
SendMode Input
SetTitleMatchMode 2 ; Allow partial match to window titles

; Apply only to windows with '- Outlook' in their title
#IfWinActive - Outlook ahk_class rctrl_renwnd32, NUIDocumentWindow
	; Trigger when Right Alt is pressed (depending on your keyboard layout, you might have to replace 'RAlt' with 'LControl & RAlt')
	RAlt::
		olApp := ComObjActive("Outlook.Application")
		try
			olItem := olApp.ActiveWindow.CurrentItem
		catch
			olItem := olApp.ActiveExplorer.Selection.Item(1)
		; Only continue if the selected item is an email
		if (olItem.class <> 43)
			return
		else
			if (olItem.UnRead <> 0)
				Send "^q"
			else
				Send "^u"
		return
#IfWinActive
