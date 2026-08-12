cask "claude-usage" do
  version "1.1.2"
  sha256 "1c4f01cc3f0613a0e261517a6593be1dd3812a7595bd840c742e783f5f436a2e"

  url "https://github.com/KingsFavor/Claude-usage-MAC/releases/download/v#{version}/Claude-Usage-#{version}.dmg"
  name "Claude Usage"
  desc "Menu bar app that monitors your Claude usage"
  homepage "https://github.com/KingsFavor/Claude-usage-MAC"

  app "Claude Usage.app"

  zap trash: [
    "~/Library/Preferences/com.kwonwoo.claude-usage-monitor.plist",
  ]
end
