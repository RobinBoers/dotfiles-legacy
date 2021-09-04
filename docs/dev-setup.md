# Linux Dev Environment

My setup for developing software on Linux. Python, NodeJS, webdev and PHP.

## 🐧 Distro

My current distro of choice is Arch Linux. I chose Arch because it has all the software I will ever need and the newest versions of all my apps.

I mostly just stick to the default repo's and AUR because I can manage all my updates at once via the commandline that way. But if software isn't available there or unstable my favorite cross-distro packaging formats are Flatpak and AppImage.

## 🖥️ Desktop Environment

My DE of choice was Ubuntu Unity, but since that isn't available on Arch Linux I did the next best thing: build my own Unity. I have taken all the things I like about Unity, and put them into Qtile. Qtile is a tiling window manager. I have a HUD and a Spotlight style search. I don't have a dock at all since all the windows are visible at all times.

I intentionally decided to hide the launcher on the left, because in Qtile all open windows are visible at all times, so a taskbar or launcher isn't needed.

## 🦊 Web browsers

For most webbrowsing I'm using Firefox. I absolutly HATE the new Proton design, so I made a Firefox userChrome.css theme that combines [Wavefox](https://github.com/QNetITQ/WaveFox) and [Lepton](https://github.com/black7375/Firefox-UI-Fix).

I also use Chromium to test my projects in another browser and if I need to use some Chrome-only app or API.

Firefox setup:

1. Open `about:config`
2. Click "Accept Risk and Continue"
3. Change `mozilla.widget.use-argb-visuals` to true  
This removes the weird white corners (when using CSD) in some window managers
4. Change `svg.context-properties.content.enabled` to true
5. Change `layout.css.color-mix.enabled` to true
6. Change `browser.tabs.tabMinWidth` to 112
7. Change `toolkit.legacyUserProfileCustomizations.stylesheets` to true
8. Open your Firefox config (~/.mozilla/firefox/*default-release)
9. Create a new folder named `chrome`
10. Move the `user.js` file from [wavefox-lepton](https://github.com/RobinBoers/wavefox-lepton) to your Firefox config folder, and the rest of the files (from the repo) into the `chrome` folder

### Browser extensions

- **Dark reader** - Dark mode for websites that don't support it out-of-the-box - [[Firefox](https://addons.mozilla.org/en-US/firefox/addon/darkreader/)] [[Chromium](https://chrome.google.com/webstore/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh)]
- **Don't track me Google** - Removes tracking info from links - [[Firefox](https://addons.mozilla.org/en-US/firefox/addon/dont-track-me-google1/)] [[Chromium](https://chrome.google.com/webstore/detail/dont-track-me-google/gdbofhhdmcladcmmfjolgndfkpobecpg?hl=en)]
- **DuckDuckGo Privacy Essentials** - See tracking and privacy info for sites - [[Firefox](https://addons.mozilla.org/en-US/firefox/addon/duckduckgo-for-firefox/)] [[Chromium](https://chrome.google.com/webstore/detail/duckduckgo-privacy-essent/bkdgflcldnnnapblkhphbgpggdiikppg?hl=en)]
- **Enhancer for YouTube** - Remove ads and get cool features - [[Firefox](https://addons.mozilla.org/en-US/firefox/addon/enhancer-for-youtube/)] [[Chromium](https://chrome.google.com/webstore/detail/enhancer-for-youtube/ponfpcnoihfmfllpaingbgckeeldkhle)]
- **Facebook Container** - Uses container tabs to isolate Facebook tracking - [[Firefox](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/)]
- **File icons for GitHub** - Nice file icons in GitHub - [[Firefox](https://addons.mozilla.org/en-US/firefox/addon/github-file-icons/)] [[Chromium](https://chrome.google.com/webstore/detail/file-icons-for-github-and/ficfmibkjjnpogdcfhfokmihanoldbfe?hl=en)]
- **OctoLinker** - Links projects and dependencies used in code - [[Firefox](https://addons.mozilla.org/en-US/firefox/addon/octolinker/)] [[Chromium](https://chrome.google.com/webstore/detail/octolinker/jlmafbaeoofdegohdhinkhilhclaklkp?hl=en)]
- **Svelte devtools** - Devtools for Svelte - [[Firefox](https://addons.mozilla.org/en-US/firefox/addon/svelte-devtools/)] [[Chromium](https://chrome.google.com/webstore/detail/svelte-devtools/ckolcbmkjpjmangdbmnkpjigpkddpogn)]
- **uBlock origin** - Block ads :) - [[Firefox](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)] [[Chromium](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en)]
- **Web Archives** - See earlier versions of sites - [[Firefox](https://addons.mozilla.org/en-US/firefox/addon/view-page-archive/)] [[Chromium](https://chrome.google.com/webstore/detail/web-archives/hkligngkgcpcolhcnkgccglchdafcnao?hl=en)]

## 🛠️ CLI

My shell is fish. I like the scriping and autocomplete it has. For the prompt I use starship prompt, because it works in all shells, so it is the same in bash and zsh (because those are installed too) and has a nice default.

CLI tools:

- **gh:** GitHub CLI
- **git:** Version control
- **nvim:** For quick edits on the commandline
- **pfetch:** For system info
- **cmatrix:** Showing my friends I'm a real bad hacker
- **htop:** Taskmanager
- **diff-so-fancy:** Nice git diff
- **paru:** AUR helper
- **youtube-dl:** Download videos
- **fzf:** Find files
- **vsce:** Packaging tool for VSCode extensions
- **flatpak:** Cross-platform apps
- **uflash:** Flash Python onto the BBC micro:bit
- **qrencode:** Generate qr codes
- **zbar:** Scan qr codes
- **playerctl:** Control media playback
- **npm:** Package manager for NodeJS
- **nmap:** Scan network information
- **aura:** Package manager and AUR helper

## 💾 Code editor

My favorite code editor is VSCode. I did use both Brackets and Atom for some time, but VSCode is just the perfect fit for me. It loads quick and has lots of useful extensions.

My VSCode extensions and config are synced using my GitHub account.

### Extensions

- [Auto close tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag) - closes HTML and XML tags
- [Auto rename tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag) - rename tags easier
- [Bracket pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer) - makes reading code with a lot of brackets easier
- [Code spell checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) - because I cant write nice things
- [colorize](https://marketplace.visualstudio.com/items?itemName=kamikillerto.vscode-colorize) - makes colors in text colored
- [CopyPasta](https://marketplace.visualstudio.com/items?itemName=makman12.copypasta) (my [fork](https://github.com/RobinBoers/CopyPasta)) - pulls stuff from StackOverflow (GitHub copilot at home :joy:)
- [ElixirLS](https://marketplace.visualstudio.com/items?itemName=JakeBecker.elixir-ls) - elixir language support
- [YAB for eex/leex](https://marketplace.visualstudio.com/items?itemName=ouven.vscode-yab-for-eex-leex) - formatting for eex and leex files
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) - Code formatter
- [Formatting toggle](https://marketplace.visualstudio.com/items?itemName=tombonnike.vscode-status-bar-format-toggle) - I dont like code formatting always
- [GitHub markdown preview](https://marketplace.visualstudio.com/items?itemName=bierner.github-markdown-preview) - make built-in preview look like GitHub
- [HTML CSS support](https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css)
- [i3](https://marketplace.visualstudio.com/items?itemName=dcasella.i3) - support for i3 config syntax
- [IntelliSense for CSS class names in HTML](https://marketplace.visualstudio.com/items?itemName=Zignd.html-css-class-completion)
- [language-mcfunction](https://marketplace.visualstudio.com/items?itemName=arcensoth.language-mcfunction) - support for minecraft datapacks
- PHP IntelliSense
- [PHP debug](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug)
- [PHP Extension Pack](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-pack)
- [micro:bit](https://marketplace.visualstudio.com/items?itemName=PhonicCanine.micro-bit)
- [Rasi](https://marketplace.visualstudio.com/items?itemName=dlasagno.rasi) - rofi config format
- [Svelte for VS Code](https://marketplace.visualstudio.com/items?itemName=svelte.svelte-vscode)
- [XML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml) and [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) - git but cooler
- [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance) & [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) - python support

### Theming

I like my editor, like most programmers, to be dark. My favorite dark themes are:

- [Frontend Delight](https://github.com/RobinBoers/frontend-delight-vscode).  
This is the color theme I'm also using in Alacritty, Spotify, Firefox and other apps.

- [GitHub Dark](https://marketplace.visualstudio.com/items?itemName=GitHub.github-vscode-theme).  
This is the old GitHub dark theme for VSCode. The new one is called GitHub Dark Default.

I also like [Ayu dark](https://marketplace.visualstudio.com/items?itemName=teabyii.ayu), [Tokyo Night](https://marketplace.visualstudio.com/items?itemName=enkia.tokyo-night) and [Ayu Light](https://marketplace.visualstudio.com/items?itemName=teabyii.ayu), but rarely use light mode. For file icons is use [vscode-icons](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-icons), and for product icons I use [Fluent icons](https://marketplace.visualstudio.com/items?itemName=miguelsolorio.fluent-icons).

My favorite font is [DejaVu Sans Mono](https://github.com/dejavu-fonts/dejavu-fonts). For VSCode I'm using a version called [DejaVu Sans Code](https://github.com/SSNikolaevich/DejaVuSansCode), which has ligatures support.

## 📒 Apps

These are the GUI apps I use on a day to day basis:

- **Thunderbird:** Mail client
- **Notes-Up:** Markdown Notes
- **Rofi:** Desktop and run launcher
- **Nemo:** File manager
- **Spotify:** Music app (adblock version for AUR)
- **Slack & Discord:** Chatting
- **Feh:** Image viewer & wallpaper setter
- **Leafpad:** GUI text editor
- **FileZilla:** FTP client
- **Portmaster:** Firewall
- **Alacritty:** Terminal emulator
- **Ciano:** File converter
- **Feedreader:** RSS reader
- **VLC media player:** Media player
- **Sherlock:** IP information
- **Lockwise:** Password manager
- **LookBook:** Icon finder
- **Tofu:** 2FA authenticator

My GTK apps use a special version of gtk3 called gtk3-classic. It has some patches that make adwaita theme smaller, remove CSD, and make GTK just better to use. Fot QT I'm using Kvantum Manager with KvGnome theme.

## 👀 Mentioned

- [wavefox-lepton](https://github.com/RobinBoers/wavefox-lepton) - Firefox theme
- [frontend-delight-vscode](https://github.com/RobinBoers/frontend-delight-vscode) - VSCode theme
- [CopyPasta](https://github.com/RobinBoers/CopyPasta) - GitHub Copilot at home

Written by Robin Boers. Inspired by [divyanshu013/linux-dev-setup](https://github.com/divyanshu013/linux-dev-setup).
