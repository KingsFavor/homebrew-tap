cask "betta" do
  version "0.2.0"
  sha256 "4fe7ab2c5607b0de1f653f27d9bdbbd25fb76c796598718079b3cebc8a34d9ac"

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
