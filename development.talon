# Editor
donk:
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
swarm: key(cmd-d)
plant preview: key(alt-d)
disk: edit.save()
