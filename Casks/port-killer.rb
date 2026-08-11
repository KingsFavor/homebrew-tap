cask "port-killer" do
  version "1.0.3"
  sha256 "40afb7a99973cf8f7afec58d91ea7bbc0d68cba3835e7e94aed8ed695d20f852"

  url "https://github.com/KingsFavor/Mac-port-viewer/releases/download/v#{version}/PortKiller-#{version}.dmg"
  name "Port Killer"
  desc "Menu bar tool to view and kill processes holding developer ports"
  homepage "https://github.com/KingsFavor/Mac-port-viewer"

  app "Port Killer.app"

  zap trash: [
    "~/Library/Preferences/com.portkiller.app.plist",
  ]
end
