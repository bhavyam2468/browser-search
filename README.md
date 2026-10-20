# Browser Search

Search the web or open URLs directly from the DankMaterialShell launcher in your preferred browser.

## Features

- **Direct URL opening**: Type `z youtube.com`, `z https://claude.ai` to open directly
- **Web search**: Type `z how to use niri` to search with your preferred engine
- **Multi-browser support**: Works with Zen, Firefox, Floorp, Librewolf, Waterfox, Vivaldi, Brave, Chromium, Chrome, Edge, Opera
- **Configurable**: Choose search engine and browser from settings

## Installation

### Via DMS Settings UI (once published)
Settings → Plugins → Browse → Search "Browser Search"

### Via CLI (once published)
`dms plugins install browserSearch`

### Manual
Copy this plugin folder to `~/.config/DankMaterialShell/plugins/BrowserSearch/`, then run `dms restart` or reload in Settings → Plugins.

## Usage

- `z example.com` → Opens https://example.com
- `z https://example.com/path` → Opens directly
- `z linux wayland tips` → Searches with your configured engine

## Configuration

Settings → Plugins → Browser Search:
- **Launcher Trigger**: Change prefix (default `z `)
- **Browser**: Pick from presets
- **Custom Browser Binary Path**: Override browser binary
- **Search Engine**: Google, DuckDuckGo, Brave, Kagi, Bing, or SearXNG

## License

MIT
