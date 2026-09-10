cask "betta" do
  version "0.3.5"
  sha256 "592fee7175614c0a34e8a71c0b56db872ec1a45fd1bc84614e55d23319d1d5b9"

  url "https://github.com/KingsFavor/Betta-Reminder/releases/download/v#{version}/Betta-#{version}.dmg"
  name "Betta"
  desc "Minimal always-on-top interval reminders for macOS"
  homepage "https://github.com/KingsFavor/Betta-Reminder"

  depends_on macos: :sonoma

  app "Betta.app"

  zap trash: [
    "~/Library/Application Support/com.dws.betta",
    "~/Library/Caches/com.dws.betta",
    "~/Library/HTTPStorages/com.dws.betta",
    "~/Library/Preferences/com.dws.betta.plist",
  ]
end
