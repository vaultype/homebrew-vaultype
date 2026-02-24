cask "vaultype" do
  version "1.0"
  sha256 "f5bbc4f1479f7ac54b77d174f6ad7a61c6085f13c19237bddfab224df4b82edd"

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
