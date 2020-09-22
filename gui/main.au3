#include <GUIConstantsEx.au3>

MainGui();

Func MainGUI()
    Local $btn1, $btn2, $msg
    GUICreate("My GUI Window Title")

    Opt( "GUICoordMode" [, 2])
    $btn1 = GUICtrlCreateButton("Button 1", 10, 30, 100)
    $btn2 = GUICtrlCreateButton("Button 2", 0, -1)

    GUISetState()

    While 1
        $msg = GUIGetMsg()
        Select
            Case $msg = $GUI_EVENT_CLOSE
                ExitLoop
            Case $msg = $btn1
                MsgBox(0,'Button 1', 'Button 1 was pressed')
            Case $msg = $btn2
                MsgBox(0,'Button 2', 'Button 2 was pressed')
        EndSelect
    WEnd
EndFunc

