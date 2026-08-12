cask "port-killer" do
  version "1.2.2"
  sha256 "741082895820d69f72dbc613bd59de5e700524f70607a4d638a36075de506124"

  url "https://github.com/KingsFavor/Mac-port-viewer/releases/download/v#{version}/PortKiller-#{version}.dmg"
  name "Port Killer"
  desc "Menu bar tool to view and kill processes holding developer ports"
  homepage "https://github.com/KingsFavor/Mac-port-viewer"

  app "Port Killer.app"

  zap trash: [
    "~/Library/Preferences/com.portkiller.app.plist",
  ]
end
