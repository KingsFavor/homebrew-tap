cask "claude-usage" do
  version "1.1.1"
  sha256 "32bf4d31d40829a8c4f436c38a53abd05b221f979bf959aa0c72826ea1f1e001"

  url "https://github.com/KingsFavor/Claude-usage-MAC/releases/download/v#{version}/Claude-Usage-#{version}.dmg"
  name "Claude Usage"
  desc "Menu bar app that monitors your Claude usage"
  homepage "https://github.com/KingsFavor/Claude-usage-MAC"

  app "Claude Usage.app"

  zap trash: [
    "~/Library/Preferences/com.kwonwoo.claude-usage-monitor.plist",
  ]
end
