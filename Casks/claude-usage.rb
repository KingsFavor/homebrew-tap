cask "claude-usage" do
  version "1.1.8"
  sha256 "3531cca99302c32a2a89e7e99957448190e04e7e5243804eab95d015a27e0ef5"

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
