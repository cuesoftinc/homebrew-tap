cask "cueprise" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "9d4e7762436c455578c63f8a20774a373ebe7848b088cb451bbb11754e965a25",
         intel: "1246ec67099ad1e6be6330452441046d0ab3b6ae39045dfc9e6f9bd8a33b895c"

  url "https://github.com/cuesoftinc/homebrew-tap/releases/download/cueprise-v#{version}/Cueprise-#{version}-mac-#{arch}.zip"
  name "Cueprise"
  desc "Desktop app for Cueprise tills and their devices"
  homepage "https://cueprise.cuesoft.io/"

  depends_on macos: :monterey

  app "Cueprise.app"

  zap trash: [
    "~/Library/Application Support/Cueprise",
    "~/Library/Logs/Cueprise",
    "~/Library/Preferences/io.cuesoft.cueprise.plist",
    "~/Library/Saved Application State/io.cuesoft.cueprise.savedState",
  ]

  caveats <<~EOS
    Cueprise is not notarized by Apple yet. On first launch macOS blocks it:
    open System Settings, Privacy & Security, and choose Open Anyway for Cueprise.
  EOS
end
