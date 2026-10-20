import QtQuick
import qs.Common
import qs.Modules.Plugins
import qs.Widgets

PluginSettings {
    id: root
    pluginId: "browserSearch"

    StyledText {
        width: parent.width
        text: "Browser Search Settings"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    StringSetting {
        settingKey: "trigger"
        label: "Launcher Trigger"
        description: "Prefix to activate this plugin"
        placeholder: "z "
        defaultValue: "z "
    }

    SelectionSetting {
        settingKey: "browser"
        label: "Browser"
        description: "Which browser to open in"
        defaultValue: "zen"
        options: [
            { label: "Zen", value: "zen" },
            { label: "Firefox", value: "firefox" },
            { label: "Floorp", value: "floorp" },
            { label: "Librewolf", value: "librewolf" },
            { label: "Waterfox", value: "waterfox" },
            { label: "Brave", value: "brave" },
            { label: "Vivaldi", value: "vivaldi" },
            { label: "Chromium", value: "chromium" },
            { label: "Google Chrome", value: "chrome" },
            { label: "Microsoft Edge", value: "edge" },
            { label: "Opera", value: "opera" }
        ]
    }

    StringSetting {
        settingKey: "browserBin"
        label: "Custom Browser Binary Path"
        description: "Overrides browser selection if set"
        placeholder: "/usr/bin/zen"
        defaultValue: ""
    }

    SelectionSetting {
        settingKey: "searchEngine"
        label: "Search Engine"
        description: "Which engine to use for queries"
        defaultValue: "google"
        options: [
            { label: "Google", value: "google" },
            { label: "DuckDuckGo", value: "duckduckgo" },
            { label: "Brave", value: "brave" },
            { label: "Kagi", value: "kagi" },
            { label: "Bing", value: "bing" },
            { label: "SearXNG", value: "searxng" }
        ]
    }
}
