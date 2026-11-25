cask "cueprise" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "cf0e51b9db226df5d4831e0e6d988738292512b91d1ea22ba49b091986850ca8",
         intel: "a8d6cb47cf8a86c992e2b689a218c465ad8fbe80123e5f588ab779690593b524"

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
