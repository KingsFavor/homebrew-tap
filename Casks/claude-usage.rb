cask "claude-usage" do
  version "1.1.7"
  sha256 "6a1fcde94f52be67febb7865f8d1fc5d4823cfc876849b2ea161847fb914e6e2"

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
