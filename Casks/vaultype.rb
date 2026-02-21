cask "vaultype" do
  version "1.0.0-rc3"
  sha256 "45762b95ef5c766b864d6992c3b301cd818890dc6d1b0bc8443df8d100a50d62"

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
