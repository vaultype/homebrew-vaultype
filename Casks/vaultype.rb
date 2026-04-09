cask "vaultype" do
  version "1.1.6"
  sha256 "87e47d59090fd30a7603e7adbd6566e0e37da00df05b5c3885cf4f58c3daa769"

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
