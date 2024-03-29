# Config file for Qtile TWM written by Robijntje.
# This is part of Robijntjes dotfiles. Copy it and do whatever
# the hell you want with it.

# This is my MacOS clone config. Only the look 
# is different from the main version. The rest of
# the config is identical to the main config file.

from typing import List  # noqa: F401

from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from libqtile import bar, hook, pangocffi
from libqtile.widget import base
from libqtile.log_utils import logger

import os
import subprocess

mod = "mod4"            # Make Super the mod key
terminal = "alacritty"  # Set default terminal emulator
browser = "firefox"     # Set default webbrowser
home = "/home/robin/"   # Path to home directory

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

    Key([mod], "h", lazy.hide_show_bar("bottom")),

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
    Key(["control", "mod1"], "Left", lazy.screen.prev_group(), desc="Previous workspace"),
    Key(["control", "mod1"], "Right", lazy.screen.next_group(), desc="Next workspace"),

    Key(["mod1"], "Tab", lazy.function(latest_group), desc="Switch between 2 workspaces"),
    
    # Open terminal with Super+Return and CTRL+ALT+T
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key(["control", "mod1"], "t", lazy.spawn(terminal), desc="Launch terminal (alt)"),

    # Open webbrowser with Super+W
    Key([mod], "w", lazy.spawn(browser), desc="Launch webbrowser"),

    # Lock the screen with Super+L
    Key([mod], "l", lazy.spawn("light-locker-command -l"), desc="Lock screen"),

    # Kill windows
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),

    # Toggle floating layout for specific window
    Key([mod], "f", lazy.window.toggle_floating(), desc="Toggle floating"),


    # Dmenu & Rofi
    Key(["mod4"], "r", lazy.spawn("rofi -show run -theme qmenu"), desc="Launch Rofi"),
    Key(["mod1"], "F1", lazy.spawn("rofi -show drun -theme qmenu"), desc="Launch Rofi (alt)"),

    Key(["mod4", "shift"], "p", lazy.spawn("rofi-qackages -theme qmoji"), desc="Search packages"),
    Key(["mod4", "shift"], "e", lazy.spawn("rofimoji --action copy --rofi-args '-theme qmoji'"), desc="Launch emoji picker"),

    Key(["mod4", "shift"], "f", lazy.spawn("/home/robin/Scripts/qr-screenshot.sh"), desc="Launch emoji picker"),

    Key(["control","mod1","shift"], "F9", lazy.spawn("python /home/robin/Scripts/hud-qtile.py"), desc="Search menus"),

    # Restart & Quit qtile
    Key(["control", "mod1"], "r", lazy.restart(), desc="Restart Qtile"),
    Key(["control", "mod1"], "q", lazy.shutdown(), desc="Exit Qtile"),

    Key([mod, "shift"], "s", lazy.spawn("scrot -s -f -e 'mv $f ~/Pictures/Screenshots/$f && xclip -selection clipboard -t image/png -i ~/Pictures/Screenshots/$f'"), desc="Take screenshot"),
    Key([mod, "shift"], "q", lazy.spawn("gpick"), desc="Open colorpicker"),

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
    
    # Birghtness controls
    Key(
        [], "XF86MonBrightnessUp",
        lazy.spawn("xbacklight +5"),
        desc="Brightness up"
    ),
    Key(
        [], "XF86MonBrightnessDown",
        lazy.spawn("xbacklight -10"),
        desc="Brightness down"
    ),

    # Media controls
    Key([], "XF86AudioPlay", lazy.spawn("/usr/bin/playerctl play-pause")),
    Key([], "XF86AudioPause", lazy.spawn("/usr/bin/playerctl pause")),
    Key([], "XF86AudioNext", lazy.spawn("/usr/bin/playerctl next")),
    Key([], "XF86AudioPrev", lazy.spawn("/usr/bin/playerctl previous")),


    #Key([mod], "r", lazy.spawncmd(),
    #    desc="Prompt"),
]

icons = {
    "logo": "",    
    "battery": " ",
    "battery-full": " ",
    "char": " ",
    "battery-empty": " ",
    "light": " ", 
    "volume": " ", 
    "download": " "
}

def get_layout_icon(name):
    return {
        "max": icons["max"],
        "monadtall": icons["monadtall"],
        "treetab": icons["treetab"],
    }.get(name, name)

# Workspace names and layouts
def init_group_names():    
    return [("Development", {'layout': 'columns'}),
            ("Browsing", {'layout': 'columns'}),
            ("Chat", {'layout': 'columns'}),
            ("Documents", {'layout': 'columns'}),
            ("Music", {'layout': 'columns'}),
            ("Games", {'layout': 'max'}),
            ("Terminal", {'layout': 'columns'}),
            ("Edit", {'layout': 'floating'}),
            ("More", {'layout': 'columns'})]

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
          ["#1b1c1d50", "#1b1c1d50"], # background for selected workspace
          ["#ffffff", "#ffffff"], # foreground color
          ["#e75e4f", "#e75e4f"], # red
          ["#2c70b7", "#2c70b7"], # blue
          ["#fdc325", "#fdc325"], # yellow
          ["#adadad", "#adadad"], # window name color
          ["#adadad", "#adadad"]] # foreground color for inactive workspace

layouts = [
    layout.Columns(
        border_width = 0,
        #margin = 10
    ),
    layout.Max(),
    layout.Floating(
        border_width = 0
    ),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile),
    # layout.RatioTile(),(),
    # layout.Zoomy(),
]

# Panel / bar at the top of the screen

widget_defaults = dict(
    font='SF Pro Text Bold',
    fontsize=14,
    padding=0,
    foreground=colors[2],
    #background=colors[0],
)
extension_defaults = widget_defaults.copy()

# Function to format window name
# to get only the app name (for Firefox and Chromium etc.)
def format_window_name(text):
    # for string in ["Discord", "Discord Updater", "Minecraft", "Minecraft Launcher", "Chromium", "Google Chrome", "Mozilla Firefox", "Mozilla Thunderbird", "Visual Studio Code"]:
    #     if string in text:
    #         text = string
    if text == "Code":
        text = "Visual Studio Code"
    if text == "Firefox":
        text = "Mozilla Firefox"
    if text == "Nemo":
        text = "Finder"
    if text == "Thunderbird":
        text = "Mozilla Thunderbird"
    if text == "Libreoffice-calc":
        text = "LibreOffice Calc"
    if text == "Libreoffice-writer":
        text = "LibreOffice Writer"
    if text == "Libreoffice-impress":
        text = "LibreOffice Impress"
    if text == "Vlc":
        text = "VLC Media Player"
    if text == "Notes-up":
        text = "Notes-Up"
    if "sherlock" in text:
        text = "Sherlock"
    return text

# Displays the name of the window that currently has focus. No weird this for floating windows, stretch width or anything. Just the window name.
class AppName(base._TextBox):
    orientations = base.ORIENTATION_HORIZONTAL
    defaults = [
        ('for_current_screen', False, 'instead of this bars screen use currently active screen'),
        ('empty_group_string', 'Finder', 'string to display when no windows are focused on current group'),
        ('format', '{state}{name}', 'format of the text'),
        ('parse_text', None, 'Function to parse and modify window names.'),
    ]

    def __init__(self, width=bar.CALCULATED, **config):
        base._TextBox.__init__(self, **config)
        self.add_defaults(AppName.defaults)

    def _configure(self, qtile, bar):
        base._TextBox._configure(self, qtile, bar)
        hook.subscribe.client_name_updated(self.hook_response)
        hook.subscribe.focus_change(self.hook_response)

        self.hook_response();

        @hook.subscribe.current_screen_change
        def on_screen_changed():
            if self.for_current_screen:
                self.hook_response()

    def hook_response(self, *args):
        if self.for_current_screen:
            w = self.qtile.current_screen.group.current_window
        else:
            w = self.bar.screen.group.current_window
        state = ''
        if w:
            if w.minimized:
                state = '_'
            var = {}
            var["state"] = state
            var["name"] = w.get_wm_class()[1].capitalize() 
            if callable(self.parse_text):
                try:
                    var["name"] = self.parse_text(var["name"])
                except:
                    logger.exception("parse_text function failed:")
            wm_class = w.get_wm_class()
            var["class"] = wm_class[0] if wm_class else ""
            unescaped = self.format.format(**var)
        else:
            unescaped = self.empty_group_string
        self.update(pangocffi.markup_escape_text(unescaped))

class Stretcher(base._TextBox):
    orientations = base.ORIENTATION_HORIZONTAL

    def __init__(self, width=bar.STRETCH, **config):
        base._TextBox.__init__(self, width=width, **config)
        self.add_defaults(AppName.defaults)

dock = bar.Bar([
        widget.LaunchBar([('thunderbird', 'thunderbird', 'launch thunderbird'), ("firefox", "firefox", "launch firefox"), ("visual-studio-code", "code", "launch vscode"), ("spotify", "env LD_PRELOAD=/usr/lib/spotify-adblock.so spotify %U", "launch spotify"), ("com.slack.Slack", "com.slack.Slack", "launch slack"), ("com.discordapp.Discord", "com.discordapp.Discord", "launch discord"), ("chromium", "chromium", "launch chromium")],
            padding = 7,
        ),
        widget.Sep(
            foreground = colors[7][0] + "50",
            padding = 20
        ),
        widget.TaskList(
            borderwidth = 0,
            max_title_width = 0,
            markup_normal = "",
            markup_floating = "",
            markup_maximixed = "",
            markup_focused = "",
            markup_minimized = "",
            padding = 3,
        ),
        widget.LaunchBar([(("system-file-manager", "nemo trash:///", "Finder"))], padding = 5, default_icon = "/usr/share/icons/Adwaita/48x48/places/user-trash.png")
    ],
    70,
    background =  colors[1],
    margin=[2,550,3,550],
)

top_panel = bar.Bar([
        widget.Sep(
            linewidth = 0,
            padding = 22 #7
        ),
        widget.TextBox(
            text=icons["logo"],
            fontsize=18, #18
            font = "Font Awesome 5 Brands"
        ),
        widget.Sep(
            linewidth = 0,
            padding = 22, #7
            foreground = colors[1]
        ),
        AppName(
                foreground = colors[2],
                parse_text = format_window_name
        ),
        widget.Sep(
            linewidth = 0,
            padding = 17,
            foreground = colors[1]
        ),
        widget.GroupBox(
                fontsize = 12,
                font = "SF Pro Text Regular",
                padding = 9,
                borderwidth = 0,
                active = colors[2],
                block_highlight_text_color = "#ffffff",
                inactive = colors[2],
                rounded = False,
                highlight_color = colors[1],
                highlight_method = "line",
                
                this_current_screen_border = colors[2],
                this_screen_border = colors[6],
                other_current_screen_border = colors[2],
                other_screen_border = colors[6],

                foreground = colors[2],
                disable_drag = True,

                urgent_alert_method = 'line',
                urgent_border = colors[2],
                urgent_text = colors[3]
        ),
        Stretcher(),
        #widget.Systray(
        #        padding = 5,
        #        background = colors[1]
        #),
        #widget.Sep(
        #    linewidth = 0,
        #    padding = 15
        #), 
        widget.CheckUpdates(
                update_interval = 1800,
                distro = "Arch_checkupdates",
                display_format = " ",
                font = "Font Awesome 5 Free",
                no_update_string = " ",
                colour_no_updates = colors[2],
                colour_have_updates = colors[2],
                execute = terminal + '--hold -e sudo pacman -Syu',
                padding = 15
        ),
        # widget.TextBox(
        #     text=icons["light"],
        #     font = "Font Awesome 5 Free"
        # ),
        # widget.Backlight(
        #        backlight_name = "intel_backlight"
        # ),
        # widget.Sep(
        #     linewidth = 0,
        #     padding = 15
        # ),
        widget.TextBox(
            text=icons["volume"],
            font = "Font Awesome 5 Free"
        ),
        widget.Volume(),
        widget.Sep(
            linewidth = 0,
            padding = 15
        ),
        widget.TextBox(
            text=icons["battery"],
            font = "Font Awesome 5 Free"
        ),
        widget.Battery(
            charge_char = "",
            discharge_char = "",
            empty_char = "",
            full_char = "",
            unknown_char = "",
            format = '{percent:2.0%} {char}',
            show_short_text = False,
            low_foreground = colors[3],
            notify_below = 15,
            update_interval = 25
        ), 
        widget.Sep(
            linewidth = 0,
            padding = 15
        ),
        # widget.Wlan(
        #    interface = "wlp2s0",
        #    format = '{essid}'
        # ),
        # widget.Sep(
        #    linewidth = 0,
        #    padding = 10
        # ),
        widget.Clock(
            format = '%d-%m-%Y    %H:%M'
        ),
        widget.Sep(
            linewidth = 0,
            padding = 10
        ),
        widget.Sep(
            linewidth = 0,
            padding = 10
        ),
    ],
    28,
    background =  colors[1]
)

screens = [
    Screen(
        top=top_panel,
        #bottom=dock,
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

floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class='xpad'), # desktop notes
        Match(wm_class='confirmreset'),  # gitk
        Match(wm_class='makebranch'),  # gitk
        Match(wm_class='maketag'),  # gitk
        Match(wm_class='ssh-askpass'),  # ssh-askpass
        Match(title='branchdialog'),  # gitk
        Match(title='pinentry'),  # GPG key password entry
        Match(title='dock1'),
    ],
    no_reposition_rules=None,
    border_width = 0,
    border_focus = colors[1][0],
    border_normal = colors[2][0]
)

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

@hook.subscribe.startup
def _():
    #dock.show(False)
    top_panel.window.window.set_property("TOP_PANEL", 1, "CARDINAL",
    format=8)


# from http://qtile.readthedocs.org/en/latest/manual/config/hooks.html#automatic-floating-dialogs
@hook.subscribe.client_new
def floating_dialogs(window):
    dialog = window.window.get_wm_type() == 'dialog'
    transient = window.window.get_wm_transient_for()
    bubble = window.window.get_wm_window_role() == 'bubble'
    if dialog or transient or bubble:
        window.floating = True
