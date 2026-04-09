cask "vaultype" do
  version "1.1.3"
  sha256 "7efd036ef7a850058ccfdd832394851cb7b621c1cc80f010b842223faf1bfc8c"

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
