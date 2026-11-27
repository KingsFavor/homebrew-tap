cask "claude-usage" do
  version "1.1.9"
  sha256 "8adb4cd9352ac327a582eb775bfa2f2b7f4dbc54a2db37933432c3ef07c3311a"

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
