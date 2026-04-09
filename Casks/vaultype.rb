cask "vaultype" do
  version "1.1.5"
  sha256 "2f7809484a637bdbf2fbff6cc1169fd6150a424fa2c3a2fb154f04cb1fcaf2c2"

  url "https://github.com/vaultype/VaulType/releases/download/v#{version}/VaulType.dmg"
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
