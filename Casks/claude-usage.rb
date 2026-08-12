cask "claude-usage" do
  version "1.0.0"
  sha256 "da9d79fc494c94fa6cb2647997ce523b650206932d30a9885ef9c8460cd6e20a"

  url "https://github.com/KingsFavor/Claude-usage-MAC/releases/download/v#{version}/Claude-Usage-#{version}.dmg"
  name "Claude Usage"
  desc "Menu bar app that monitors your Claude usage"
  homepage "https://github.com/KingsFavor/Claude-usage-MAC"

  app "Claude Usage.app"

  zap trash: [
    "~/Library/Preferences/com.kwonwoo.claude-usage-monitor.plist",
  ]
end
