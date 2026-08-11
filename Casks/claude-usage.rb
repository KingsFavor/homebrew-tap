cask "claude-usage" do
  version "1.0.0"
  sha256 "509ce0fc3580a5a2d47e68e03947b55577efda5050324185e50b4307d7b1fbbc"

  url "https://github.com/KingsFavor/Claude-usage-MAC/releases/download/v#{version}/Claude-Usage-#{version}.dmg"
  name "Claude Usage"
  desc "Menu bar app that monitors your Claude usage"
  homepage "https://github.com/KingsFavor/Claude-usage-MAC"

  app "Claude Usage.app"

  zap trash: [
    "~/Library/Preferences/com.kwonwoo.claude-usage-monitor.plist",
  ]
end
