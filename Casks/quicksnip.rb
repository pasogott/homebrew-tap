cask "quicksnip" do
  version "1.0.1"
  sha256 "ddf1db1151bda8f5aac2c1c496296921f5dc678199a2b0ab0232f3b53f2a6a96"

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
