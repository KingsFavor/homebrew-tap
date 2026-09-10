cask "betta" do
  version "0.1.0"
  sha256 "05e21a5f6744091574467c58f8ee8f0235dd583557ae1ba263cbdbad50aa4afb"

  url "https://github.com/KingsFavor/Betta-Reminder/releases/download/v#{version}/Betta-#{version}.dmg",
      verified: "github.com/KingsFavor/Betta-Reminder/"
  name "Betta"
  desc "Minimal always-on-top interval reminders for macOS"
  homepage "https://github.com/KingsFavor/Betta-Reminder"

  depends_on macos: ">= :sonoma"

  app "Betta.app"

  zap trash: [
    "~/Library/Application Support/com.dws.betta",
    "~/Library/Caches/com.dws.betta",
    "~/Library/HTTPStorages/com.dws.betta",
    "~/Library/Preferences/com.dws.betta.plist",
  ]
end
