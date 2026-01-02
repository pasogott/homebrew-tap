cask "quicksnip" do
  version "1.0.0"
  sha256 "16e272a2f207fc0991f5b958c77dce6306766499947c3c44e00db2deef8104e5"

  url "https://github.com/pasogott/quicksnip-menubar-swift/releases/download/v#{version}/QuickSnip.dmg"
  name "QuickSnip"
  desc "Menubar app for managing text snippets with macOS Text Replacement sync"
  homepage "https://github.com/pasogott/quicksnip-menubar-swift"

  depends_on macos: ">= :sequoia"

  app "QuickSnip.app"

  zap trash: [
    "~/.snippets",
    "~/Library/Preferences/com.pasogott.QuickSnip.plist",
  ]
end
