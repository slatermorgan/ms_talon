# Editor
splodge:
    edit.paste()

snatch:
    edit.select_all()
    edit.cut()
replace word:
    edit.select_word()
    edit.paste()
grab:
    key("shift:down")
    mouse_click(0)
    key("shift:up")
donk:
    key("cmd-enter")
swarm: key(cmd-d)
disk: edit.save()
