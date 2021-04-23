# Config file for Qtile TWM written by Robijntje.
# This is part of Robintjes dotfiles. Copy it and do whatever
# the hell you want with it.

from typing import List  # noqa: F401

from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

import os
import subprocess

mod = "mod4"            # Make Super the mod key
terminal = "alacritty"    # Set default terminal emulator
browser = "firefox"     # Set default webbrowser

def latest_group(qtile):
    qtile.current_screen.set_group(qtile.current_screen.previous_group)

def next_group(qtile):
    qtile.current_screen.set_group(qtile.current_screen.next_group)

keys = [
    # Switch between windows
    Key([mod], "Left", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "Right", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "Down", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "Up", lazy.layout.up(), desc="Move focus up"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "Left", lazy.layout.shuffle_left(),
        desc="Move window to the left"),
    Key([mod, "shift"], "Right", lazy.layout.shuffle_right(),
        desc="Move window to the right"),
    Key([mod, "shift"], "Down", lazy.layout.shuffle_down(),
        desc="Move window down"),
    Key([mod, "shift"], "Up", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "Left", lazy.layout.grow_left(),
        desc="Grow window to the left"),
    Key([mod, "control"], "Right", lazy.layout.grow_right(),
        desc="Grow window to the right"),
    Key([mod, "control"], "Down", lazy.layout.grow_down(),
        desc="Grow window down"),
    Key([mod, "control"], "Up", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset window sizes"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Split"),

    # Switch between workspaces / groups
    Key(["control", "mod1"], "Left", lazy.screen.prevgroup(), desc="Previous workspace"),
    Key(["control", "mod1"], "Right", lazy.screen.nextgroup(), desc="Next workspace"),

    Key(["mod1"], "Tab", lazy.function(latest_group), desc="Switch between 2 workspaces"),
    
    # Open terminal with Super+Return and CTRL+ALT+T
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key(["control", "mod1"], "t", lazy.spawn(terminal), desc="Launch terminal (alt)"),

    # Open webbrowser with Super+W
    Key([mod], "w", lazy.spawn(browser), desc="Launch webbrowser"),

    # Lock the screen with Super+L
    Key([mod], "l", lazy.spawn("betterlockscreen --lock dim"), desc="Lock screen"),

    # Kill windows
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),

    # Toggle floating layout for specific window
    Key([mod], "f", lazy.window.toggle_floating(), desc="Toggle floating"),


    # Dmenu & Rofi
    Key(["mod4"], "r", lazy.spawn("rofi -show drun -theme qmenu"), desc="Launch Rofi"),
    Key(["mod1"], "F1", lazy.spawn("rofi -show drun -theme qmenu"), desc="Launch Rofi (alt)"),

    # Restart & Quit qtile
    Key(["control", "mod1"], "r", lazy.restart(), desc="Restart Qtile"),
    Key(["control", "mod1"], "q", lazy.shutdown(), desc="Exit Qtile"),

    # Volume control

    Key(
        [], "XF86AudioRaiseVolume",
        lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ +2%"),
        desc="Raise volume"
    ),
    Key(
        [], "XF86AudioLowerVolume",
        lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ -2%"),
        desc="Lower volume"
    ),
    Key(
        [], "XF86AudioMute",
        lazy.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle"),
        desc="Mute"
    ),
    Key(
        [], "XF86AudioMicMute",
        lazy.spawn("pactl set-source-mute @DEFAULT_SOURCE@ toggle"),
        desc="Mute mic"
    ),

    # Media controls
    Key([], "XF86AudioPlay", lazy.spawn("/usr/bin/playerctl play-pause")),
    Key([], "XF86AudioPause", lazy.spawn("/usr/bin/playerctl pause")),
    Key([], "XF86AudioNext", lazy.spawn("/usr/bin/playerctl next")),
    Key([], "XF86AudioPrev", lazy.spawn("/usr/bin/playerctl previous")),


    #Key([mod], "r", lazy.spawncmd(),
    #    desc="Prompt"),
]

# Workspace names and layouts
def init_group_names():    
    return [("dev", {'layout': 'columns'}),
            ("www", {'layout': 'columns'}),
            ("chat", {'layout': 'columns'}),
            ("docs", {'layout': 'columns'}),
            ("term", {'layout': 'columns'}),
            ("games", {'layout': 'max'}),
            ("sys", {'layout': 'columns'}),
            ("edit", {'layout': 'floating'}),
            ("more", {'layout': 'columns'})]

def init_groups():
    return [Group(name, **kwargs) for name, kwargs in group_names]

# Define workspace groups and group names
if __name__ in ["config", "__main__"]:
        group_names = init_group_names()
        groups = init_groups()

# Keybinds for switching between workspaces
for i, (name, kwargs) in enumerate(group_names, 1):
    keys.append(Key([mod], str(i), lazy.group[name].toscreen()))        # Switch to another group
    keys.append(Key([mod, "shift"], str(i), lazy.window.togroup(name), lazy.group[name].toscreen())) # Send current window to another group, and switch to that group :)

colors = [["#1b1c1d", "#1b1c1d"], # background color
          ["#f74319", "#f74319"], # background for selected workspace
          ["#ffffff", "#ffffff"], # foreground color
          ["#74ec4c", "#74ec4c"], # green
          ["#2c70b7", "#2c70b7"], # blue
          ["#fdc325", "#fdc325"], # yellow
          ["#adadad", "#adadad"], # window name color
          ["#565747", "#565747"]] # foreground color for inactive workspace

layouts = [
    layout.Columns(
        border_width = 2,
        border_focus = colors[1][0],
        border_normal = colors[2][0],
        margin = 9
    ),
    layout.Max(),
    layout.Floating(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

# Panel / bar at the top of the screen

widget_defaults = dict(
    font='Ubuntu Bold',
    fontsize=10,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [widget.GroupBox(
                       fontsize = 9,
                       margin_y = 3,
                       margin_x = 0,
                       padding_y = 5,
                       padding_x = 5,
                       borderwidth = 0,
                       active = colors[2],
                       block_highlight_text_color = colors[2],
                       inactive = colors[7],
                       rounded = False,
                       highlight_color = colors[1],
                       highlight_method = "line",
                       foreground = colors[2],
                       background = colors[0]
                ),
                widget.Sep(
                    linewidth = 0,
                    padding = 5,
                    foreground = colors[1],
                    background = colors[0]
                ),
                widget.WindowName(
                       foreground = colors[6],
                       background = colors[0],
                       padding = 0
                ),
                widget.Volume(
                    fmt=" {}", 
                    emoji=True,
                    foreground = colors[2],
                    background = colors[0],

                ),
                widget.Volume(
                       foreground = colors[2],
                       background = colors[0],
                ),
                widget.Sep(
                    linewidth = 0,
                    padding = 10,
                    foreground = colors[2],
                    background = colors[0]
                ),
                widget.CheckUpdates(
                       update_interval = 1800,
                       distro = "Arch_checkupdates",
                       display_format = "{updates} Updates",
                       no_update_string = "Up to date",
                       colour_no_updates = colors[2],
                       foreground = colors[2],
                       mouse_callbacks = {'Button1': lambda: qtile.cmd_spawn(myTerm + ' -e sudo pacman -Syu')},
                       background = colors[0]
                ),
                widget.Sep(
                    linewidth = 0,
                    padding = 10,
                    foreground = colors[2],
                    background = colors[0]
                ),
                widget.Battery(
                    foreground = colors[2],
                    background = colors[0],
                    charge_char = "CHR",
                    discharge_char = "BAT",
                    empty_char = "EMPTY",
                    full_char = "FULL",
                    unknown_char = "UNK",
                    format = '{char} {percent:2.0%}',
                    show_short_text = False,
                ),
                widget.Sep(
                    linewidth = 0,
                    padding = 10,
                    foreground = colors[2],
                    background = colors[0]
                ),
                widget.Wlan(
                    interface = "wlp2s0",
                    format = '{essid}',
                    foreground = colors[2],
                    background = colors[0],
                ),
                widget.Sep(
                    linewidth = 0,
                    padding = 10,
                    foreground = colors[2],
                    background = colors[0]
                ),
                widget.Clock(
                    format = '%Y-%m-%d %H:%M',
                    background = colors[0],
                    foreground = colors[2]
                ),
                widget.Systray(
                    background = colors[0],
                    padding = 5
                ),
            ],
            24,
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False

floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
])

auto_fullscreen = True
focus_on_window_activation = "smart"

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"

# Autostart some programs
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.call([home])

# from http://qtile.readthedocs.org/en/latest/manual/config/hooks.html#automatic-floating-dialogs
@hook.subscribe.client_new
def floating_dialogs(window):
    dialog = window.window.get_wm_type() == 'dialog'
    transient = window.window.get_wm_transient_for()
    bubble = window.window.get_wm_window_role() == 'bubble'
    if dialog or transient or bubble:
        window.floating = True
