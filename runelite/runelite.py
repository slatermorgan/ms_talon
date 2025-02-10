# from talon import Module, actions, ctrl

# mod = Module()

# space_held = False

# @mod.action_class
# class Actions:
#     def space_hold():
#         """Holds the space key"""
#         global space_held
#         if not space_held:
#             ctrl.key_press('space', down=True)
#             space_held = True

#     def space_release():
#         """Releases the space key if it is held"""
#         global space_held
#         if space_held:
#             ctrl.key_press('space', up=True)
#             space_held = False

#     def toggle_space_hold():
#         """Toggles the space hold based on current state"""
#         if space_held:
#             actions.user.space_release()
#         else:
#             actions.user.space_hold()
