cask "vaultype" do
  version "1.1.4"
  sha256 "67293d57b331e933323674f0ea43610e3194a61ef553fab75d235bf4e653ee20"

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
