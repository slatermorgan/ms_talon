app: Runelite
#
runescape password: "silly"
skip dialogue:
    key(space:down)
    sleep(10s)
    key(space:up)

# inventory tabs
attack styles: key(f1)
skills: key(f2)
quests: key(f3)
invent: key(esc)
equip: key(f4)
pray: key(f5)
magic: key(f6)
friends: key(f8)
clans: key(f7)
music: key(f12)

parrot(cluckdisabled):
    key("{modifiers}:down")
    mouse_click(1)
    key("{modifiers}:up")
    # close the mouse grid
    user.grid_close()
