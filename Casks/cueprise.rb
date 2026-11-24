cask "cueprise" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "967b83eaa9070bfa7c1fb519e62aeb3d60076e9f46728826a90b5e72696d8ed5",
         intel: "3cfa419241c226fbf52d0ce359c9a304cff66042de4edc87092a28078dd22690"

  url "https://github.com/cuesoftinc/homebrew-tap/releases/download/cueprise-v#{version}/Cueprise-#{version}-mac-#{arch}.zip"
  name "Cueprise"
  desc "Desktop app for Cueprise tills and their devices"
  homepage "https://cueprise.cuesoft.io/"

  depends_on macos: ">= :monterey"

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
