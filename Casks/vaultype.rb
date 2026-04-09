cask "vaultype" do
  version "1.1.8"
  sha256 "b08bf3ee7c4ab9ba2ba86ee0d421baa911503b62f22bf983924b41ca5c3085c9"

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
