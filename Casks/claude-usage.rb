cask "claude-usage" do
  version "1.1.0"
  sha256 "4c291fb0728425b8a7b824149c243982deeabe89f45c60c6bcc2ff2f16dc2ce0"

  url "https://github.com/KingsFavor/Claude-usage-MAC/releases/download/v#{version}/Claude-Usage-#{version}.dmg"
  name "Claude Usage"
  desc "Menu bar app that monitors your Claude usage"
  homepage "https://github.com/KingsFavor/Claude-usage-MAC"

  app "Claude Usage.app"

  zap trash: [
    "~/Library/Preferences/com.kwonwoo.claude-usage-monitor.plist",
  ]
end
