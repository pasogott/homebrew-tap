# Homebrew Tap

Custom Homebrew tap for my applications.

## Installation

```bash
brew tap pasogott/tap
```

## Available Formulas

### firmenbuchat

CLI for the Austrian company register (Firmenbuch).

```bash
# Stable release (recommended)
brew install pasogott/tap/firmenbuchat

# Latest development version
brew install --HEAD pasogott/tap/firmenbuchat
```

**Features:**
- Firmenbuchauszug abrufen
- Firmensuche und Urkundensuche
- Urkunden herunterladen
- Veränderungs-Feeds
- JSON/Tabellen-Ausgabe

**Requirements:**
- Python 3.12+
- uv (installed automatically as dependency)

**Documentation:** https://github.com/pasogott/firmenbuch-aip

---

### gurkerlcli

CLI tool for gurkerl.at online grocery shopping (Austria).

```bash
# Stable release (recommended)
brew install pasogott/tap/gurkerlcli

# Latest development version
brew install --HEAD pasogott/tap/gurkerlcli
```

**Features:**
- Product search
- Shopping cart management (add, remove, view)
- Order history
- JSON output for scripting
- Session management with keyring integration

**Requirements:**
- Python 3.12+
- uv (installed automatically as dependency)
- gurkerl.at account

**Documentation:** https://github.com/pasogott/gurkerlcli

---

### frappecli

CLI tool for managing Frappe/ERPNext instances via REST API.

```bash
# Stable release (recommended)
brew install pasogott/tap/frappecli

# Latest development version
brew install --HEAD pasogott/tap/frappecli
```

**Features:**
- CRUD operations on any Frappe doctype
- File upload/download (private by default)
- Report execution and export
- Custom RPC method calls
- Multi-site configuration

**Requirements:**
- Python 3.12+
- uv (installed automatically as dependency)

**Documentation:** https://github.com/pasogott/frappecli

---

## Available Casks

### QuickSnip

Menubar app for managing text snippets with macOS Text Replacement sync.

```bash
brew install --cask pasogott/tap/quicksnip
```

**Features:**
- Markdown-based snippet storage in `~/.snippets/`
- Sync to macOS Text Replacement (syncs to iOS via iCloud)
- Variable expansion: `{date}`, `{time}`, `{clipboard}`
- Import/export snippets as zip archives

**Requirements:**
- macOS 15.0+ (Sequoia)
- Full Disk Access permission for Text Replacement sync

---

## Updating

```bash
# Update tap and upgrade all installed formulas
brew update && brew upgrade

# For HEAD installations, reinstall to get latest commit
brew reinstall --HEAD pasogott/tap/frappecli

# For stable, upgrade will automatically install new releases
brew upgrade frappecli
```

## Support

- **frappecli Issues:** https://github.com/pasogott/frappecli/issues
- **QuickSnip Issues:** https://github.com/pasogott/quicksnip-menubar-swift/issues
- **Tap Issues:** https://github.com/pasogott/homebrew-tap/issues
