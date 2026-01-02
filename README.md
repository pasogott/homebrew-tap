# Homebrew Tap

Custom Homebrew tap for my applications.

## Installation

```bash
brew tap pasogott/tap
```

## Available Casks

### QuickSnip

Menubar app for managing text snippets with macOS Text Replacement sync.

```bash
brew install --cask quicksnip
```

**Features:**
- Markdown-based snippet storage in `~/.snippets/`
- Sync to macOS Text Replacement (syncs to iOS via iCloud)
- Variable expansion: `{date}`, `{time}`, `{clipboard}`
- Import/export snippets as zip archives

**Requirements:**
- macOS 15.0+ (Sequoia)
- Full Disk Access permission for Text Replacement sync
