cask "vaultype" do
  version "1.0.0-rc2"
  sha256 "0bd7c2399b15b20b3b7183d534150f87ee94456cc83a122cc83b12679f304699"

  url "https://github.com/vaultype/VaulType/releases/download/v#{version}/VaulType-#{version}.dmg"
  name "VaulType"
  desc "Privacy-first speech-to-text for macOS — runs 100% locally"
  homepage "https://github.com/vaultype/VaulType"

  depends_on macos: ">= :sonoma"

  app "VaulType.app"

  zap trash: [
    "~/Library/Application Support/VaulType",
    "~/Library/Preferences/com.vaultype.app.plist",
    "~/Library/Caches/com.vaultype.app",
  ]
end
