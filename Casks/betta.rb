cask "betta" do
  version "0.3.4"
  sha256 "40ce6162b3e8ba526fcc722e35cb4ea9bf86afdf7e1932d5b48128711610b952"

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
