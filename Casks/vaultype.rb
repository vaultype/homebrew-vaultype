cask "vaultype" do
  version "1.1.7"
  sha256 "cd2da3c1cc1b80d3118c17b795845aae0a8331c6451feb1cafeea2941056bc46"

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
