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
#NPM
run install endpoints: "npm install https://bitbucket.org/oneiota/mesh-connect-endpoints.git\#branch"
run serverless <user.text> [over]:
    insert("serverless ")
    insert(text)
    sleep(100ms)
run NPM <user.text> [over]:
    insert("npm ")
    insert(text)
    sleep(100ms)
run docker compose <user.text> [over]:
    insert("docker compose ")
    insert(text)
    sleep(100ms)
disk: edit.save()
gopher:":=" 
