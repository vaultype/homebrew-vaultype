cask "vaultype" do
  version "1.1.0"
  sha256 "47c951f1dae27340944bd2a692a9f77966a3747ceb8e69110a48157376fbe8d6"

  url "https://github.com/vaultype/VaulType/releases/download/v#{version}/VaulType-#{version}.dmg"
  name "VaulType"
  desc "Privacy-first speech-to-text for macOS — runs 100% locally"
  homepage "https://github.com/vaultype/VaulType"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "VaulType.app"

  zap trash: [
    "~/Library/Application Support/VaulType",
    "~/Library/Preferences/com.vaultype.VaulType.plist",
    "~/Library/Caches/com.vaultype.VaulType",
  ]
end
