cask "quicksnip" do
  version "1.0.4"
  sha256 "15a9ffd35fd4f2775504f25edb21e1d654514f753cd81afbd840b3511073e871"

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
