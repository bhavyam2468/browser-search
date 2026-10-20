        const t = q.trim()
        if (t.startsWith("http://") || t.startsWith("https://")) return true
        if (t.indexOf(" ") >= 0) return false
        if (t.indexOf(".") < 0) return false
        const tld = t.split(".").pop().toLowerCase()
        const tlds = ["com", "ai", "org", "net", "io", "dev", "app", "co", "xyz", "info", "biz", "ru", "de", "uk", "fr", "ca", "us", "tv", "gg", "me", "edu", "gov", "page", "site", "to", "sh", "it", "nl", "es"]
        return tlds.indexOf(tld) >= 0
    }

    function buildSearchUrl(query) {
        const q = encodeURIComponent(query.trim())
        switch (searchEngine) {
            case "duckduckgo": return "https://duckduckgo.com/?q=" + q
            case "brave":      return "https://search.brave.com/search?q=" + q
            case "kagi":       return "https://kagi.com/search?q=" + q
            case "bing":       return "https://www.bing.com/search?q=" + q
            case "google":
            default:           return "https://www.google.com/search?q=" + q
        }
    }

    function getBrowserCmd() {
        if (browserBin && browserBin.trim() !== "") {
            return browserBin.trim()
        }
        switch (browser) {
            case "firefox": return "firefox"
            case "floorp": return "floorp"
            case "librewolf": return "librewolf"
            case "waterfox": return "waterfox"
            case "brave": return "brave"
            case "vivaldi": return "vivaldi"
            case "chromium": return "chromium"
            case "chrome": return "google-chrome"
            case "edge": return "microsoft-edge"
            case "opera": return "opera"
            case "zen":
            default: return "zen"
        }
    }
    function getItems(query) {
        if (!query || query.trim() === "") return []

        const q = query.trim()
        const isUrl = looksLikeUrl(q)

        return [{
            name: isUrl ? "Open in browser" : "Search in browser",
            comment: '"' + q + '"',
            icon: isUrl ? "material:open_in_new" : "material:search",
            action: isUrl ? "open:" + q : "search:" + q,
            categories: isUrl ? ["Web", "URL"] : ["Web"]
        }]
    }

    function executeItem(item) {
        if (!item || !item.action) return
        let url
        if (item.action.startsWith("open:")) {
            url = item.action.substring("open:".length).trim()
            if (!url.startsWith("http://") && !url.startsWith("https://")) {
                url = "https://" + url
            }
        } else if (item.action.startsWith("search:")) {
            url = buildSearchUrl(item.action.substring("search:".length))
        } else {
            return
        }

        Quickshell.execDetached([getBrowserCmd(), url])
    }
}
