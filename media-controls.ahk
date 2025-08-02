#Requires AutoHotkey v2.0
#SingleInstance Force

Insert::
{
    Send "{Media_Prev}"
}

Home::
{
    Send "{Media_Play_Pause}"
}

PgUp::
{
    Send "{Media_Next}"
}

Delete::
{
    Send "{Volume_Down}"
}

End::
{
    Send "{Volume_Mute}"
}

PgDn::
{
    Send "{Volume_Up}"
}