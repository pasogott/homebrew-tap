cask "quicksnip" do
  version "1.0.0"
  sha256 "01574dae7a95b551ad31c32873bfa3752569b6325b994537f30c680783cc5ead"

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
