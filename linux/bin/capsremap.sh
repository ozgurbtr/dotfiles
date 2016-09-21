# !/bin/bash
# Map an unused modifier's keysym to the spacebar's keycode and make it a
# control modifier. It needs to be an existing key so that emacs won't
# spazz out when you press it. Hyper_L is a good candidate.
killall xcape
spare_modifier="Caps_Lock"
xmodmap -e 'keycode 66 = Control_L'
xmodmap -e 'clear Lock'
xmodmap -e 'add Control = Control_L'
xmodmap -e "keycode any = Caps_Lock"


# Map space to an unused keycode (to keep it around for xcape to
# use).

# Finally use xcape to cause the space bar to generate a space when tapped.
xcape -e "Control_L=Escape"
