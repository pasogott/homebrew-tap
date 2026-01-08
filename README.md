# Homebrew Tap

Custom Homebrew tap for my applications.

## Installation

```bash
brew tap pasogott/tap
```

## Available Formulas

### frappecli

CLI tool for managing Frappe/ERPNext instances via REST API.

```bash
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

# Reinstall HEAD formula to get latest version
brew reinstall --HEAD pasogott/tap/frappecli
```

## Support

- **frappecli Issues:** https://github.com/pasogott/frappecli/issues
- **QuickSnip Issues:** https://github.com/pasogott/quicksnip-menubar-swift/issues
- **Tap Issues:** https://github.com/pasogott/homebrew-tap/issues
