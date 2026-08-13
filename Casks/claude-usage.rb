cask "claude-usage" do
  version "1.1.6"
  sha256 "3fefc0176bcd7b17f8a302e0d0702110a45367bba01ebe50ae9123e5ee3069ad"

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
