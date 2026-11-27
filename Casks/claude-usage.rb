cask "claude-usage" do
  version "1.2.0"
  sha256 "10e6bb1dfd66f7df3b5a33234b6179436483c4ec7c3d28676c13da6989d4c00c"

  url "https://github.com/KingsFavor/Claude-usage-MAC/releases/download/v#{version}/Claude-Usage-#{version}.dmg"
  name "Claude Usage"
  desc "Menu bar app that monitors your Claude usage"
  homepage "https://github.com/KingsFavor/Claude-usage-MAC"

  app "Claude Usage.app"

  zap trash: [
    "~/Library/Preferences/com.kwonwoo.claude-usage-monitor.plist",
    "~/Library/Application Support/ClaudeUsageMonitor",
  ]
end
