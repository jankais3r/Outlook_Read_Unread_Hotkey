# Outlook Read Unread Hotkey

It's hard to believe, but even in the year 2020 and it is not possible to assign custom hotkeys in Outlook.

Even worse, there are two different hotkeys for marking a message as Read (CTRL+Q) or Unread (CTRL+U).

I wanted to have just one key for switching between the states, and I wanted that key to be the right Alt. This script does exactly that.
![Right Alt not Alt Right](https://github.com/jankais3r/Outlook_Read_Unread_Hotkey/blob/master/keyboard.png)

You can either download a pre-compiled executable from [Releases](https://github.com/jankais3r/Outlook_Read_Unread_Hotkey/releases/latest), or you can easily compile it yourself.


## Compilation steps
1) Download [AutoHotKey](https://www.autohotkey.com/)
2) Extract it and navigate to the `Compiler` subfolder where you'll find `Ahk2Exe.exe`
3) Compile the script by running `Ahk2Exe.exe /in Outlook_Read_Unread_Hotkey.ahk /out Outlook_Read_Unread_Hotkey.exe`


To run the script automatically on every boot, copy `Outlook_Read_Unread_Hotkey.exe` into your Startup folder (By navigating to `shell:startup`).
